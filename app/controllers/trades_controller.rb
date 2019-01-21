class TradesController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :user_info_return, only: [:confirmation]
  before_action :check_arigato, only: [:index]

  def index
    # カート画面
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @once_in_cart = Trade.where(status: 1, user_id: current_user.id)
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    @sum_arigato = @items_sum*0.9
  end

  def minus_count
    # カート内アイテムの購入数マイナス
    trade = Trade.find(params[:trade_id])

    if trade.count > 1
      count_items = trade.update(count: trade.count-1)
    end

    total_price = trade.update(total: trade.stock.item.price*trade.count)
    redirect_to trades_path
  end

  def plus_count
    # カート内画面の購入数のプラス
    trade = Trade.find(params[:trade_id])

    if trade.stock.count > trade.count
      count_items = trade.update(count: trade.count+1)
    end

   total_price = trade.update(total: trade.stock.item.price*trade.count)
    redirect_to trades_path
  end

  def erace_item
    # カートからアイテムを消去
    trade = Trade.find(params[:trade_id])
    erace_from_cart = trade.update(status: 1)
    flatten_count = trade.update(count: 1)
    redirect_to trades_path
  end

  def return_to_cart
    # 以前カートにあったアイテムからカートに追加
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(status: 0)
    redirect_to trades_path
  end

  def arigato_update
    # ARIGATO価格での購入時
    trade = Trade.where(status: 0, user_id: current_user.id)
    trade.update(status: 2)
    redirect_to order_trades_path
  end

  def order
    # 購入時のお届け先・配送先・支払い方法登録ページ
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    @include_fee = @items_sum+320

    @arigato_trade = Trade.where(status: 2, user_id: current_user.id)
    @arigato_sum = @arigato_trade.sum{|trade|trade[:total]}*0.9
    @arigato_fee = @arigato_sum+320

    @user = Shipping.order('created_at': :desc).find_by(user_id: current_user.id)
    @user_credit_card = CreditCard.order('created_at': :desc).find_by(user_id: current_user.id)
    @credit_card = CreditCard.new
    @shipping_info = Shipping.new
  end

  def add_user_info
    # 購入時のお届け先・配送先・支払い方法登録
    @user = Shipping.find_by(user_id: current_user.id)
    @user_credit_card = CreditCard.find_by(user_id: current_user.id)
    @credit_card = CreditCard.new(credit_card_params)
    @shipping_info = Shipping.new(shipping_info_params)

    if @credit_card.save && @shipping_info.save
      redirect_to confirmation_trades_path

    elsif @credit_card.save || @shipping_info.save
      redirect_to confirmation_trades_path
    end
  end

  def confirmation
    # 購入時の注文内容確認ページ
    @user = Shipping.order('created_at': :desc).find_by(user_id: current_user.id)
    @credit_card = CreditCard.order('created_at': :desc).find_by(user_id: current_user.id)
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    @include_fee = @items_sum+320

    @arigato_trade = Trade.where(status: 2, user_id: current_user.id)
    @arigato_sum = @arigato_trade.sum{|trade|trade[:total]}*0.9
    @arigato_fee = @arigato_sum+320
  end

  def done_transaction
    # 購入完了
    trade = Trade.where(status: 0, user_id: current_user.id)
    market = Market.find_by(prefecture: current_user.prefecture)
    sum = trade.sum{|trade|trade[:total]}

    arigato_trade = Trade.where(status: 2, user_id: current_user.id)
    arigato_market = Market.find_by(prefecture: current_user.prefecture)
    arigato_sum = arigato_trade.sum{|trade|trade[:total]}*0.9

    if trade.present?
      trade.each do |i|
        i.update(status: 3)
        i.stock.update(count: i.stock.count-i.count)
      end
      market.update(count: market.count+1, total: market.total+sum, items: market.items+trade.length)

    elsif arigato_trade.present?
      arigato_trade.each do |i|
        i.update(status: 3, total: i.total*0.9)
        i.stock.update(count: i.stock.count-i.count)
      end
      arigato_market.update(count: arigato_market.count+1, total: arigato_market.total+arigato_sum, items: arigato_market.items+arigato_trade.length)
    end
  end

  def create
    trade = Trade.new(trade_params)
    if trade.save
      redirect_to trades_path
    else
      render "items/show"
    end
  end

  def prefecture
    # 市場調査画面
  end

  def maximum_total
    # 市場調査画面にて購入金額が最大の県を色付け
    respond_to do |format|
        format.json {render 'prefecture', json: Market.find_by(total: Market.maximum(:total))}
    end
  end

  def search_prefecture
    # 市場調査画面にて県ごとの市場データ取得に関するajax通信
    respond_to do |format|
        format.json {render 'prefecture', json: @pref = Market.find_by(prefecture: params[:prefecture])}
    end
  end


  private

    def credit_card_params
      params.require(:credit_card).permit(:number, :expire_month, :expire_day, :security_code).merge(user_id: current_user.id)
    end

    def shipping_info_params
      params.require(:shipping).permit(:genre, :name, :postal_code, :prefecture, :address1, :address2, :phonenumber).merge(user_id: current_user.id)
    end

    def trade_params
      params.require(:trade).permit(:stock_id, :total).merge(status: 0, user_id: current_user.id, count: 1)
    end

    def user_info_return
      # 購入ページに遷移する際にユーザー情報と届け先情報がない場合は、登録ページへリダイレクト
      @user = Shipping.find_by(user_id: current_user.id)
      @user_credit_card = CreditCard.find_by(user_id: current_user.id)
      unless @user.present? && @user_credit_card.present?
        redirect_to order_trades_path
      end
    end

    def check_arigato
      # tradeのstatusが2のtradeがある場合、カート画面に入る前に、0へ変更
      arigato_trade = Trade.where(status: 2, user_id: current_user.id)

      if arigato_trade.present?

        arigato_trade.each do |i|
          i.update(status: 0)
        end

        redirect_to trades_path
      end
    end

end
