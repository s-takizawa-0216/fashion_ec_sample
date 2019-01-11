class TradesController < ApplicationController
  before_action :authenticate_user!

  def index
    # カートにあるアイテム
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    # 以前カートに入ったアイテム
    @once_in_cart = Trade.where(status: 1, user_id: current_user.id)
    # 合計金額
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    # ARIGATO価格
    @sum_arigato = @items_sum*0.9
  end

  def minus_count
    # 購入数のマイナス
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(count: trade.count-1)
    # 合計金額の修正
    total_price = trade.update(total: trade.stock.item.price*trade.count)
    redirect_to trades_path
  end

  def plus_count
    # 購入数のプラス
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(count: trade.count+1)
    # 合計金額の修正
    total_price = trade.update(total: trade.stock.item.price*trade.count)
    redirect_to trades_path
  end

  def erace_item
    # カートからアイテムを消去
    trade = Trade.find(params[:trade_id])
    erace_from_cart = trade.update(status: 1)
    redirect_to trades_path
  end

  def return_to_cart
    # 以前カートにあったアイテムからカートに追加
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(status: 0)
    redirect_to trades_path
  end

  def order
    # 合計金額の計算
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    # 送料込みの値段
    @include_fee = @items_sum+320
    #ユーザー情報の取得
    @user = UserDetail.find_by(user_id: current_user.id)
    # クレジットカード情報の作成
    @credit_card = CreditCard.new
  end

  def add_credit_card
    # クレジットカード情報の生成
    @credit_card = CreditCard.new(credit_card_params)
    if @credit_card.save
      redirect_to confirmation_trades_path
    else
      redirect_to order_trades_path
    end
  end

  def confirmation
    #ユーザー情報お取得
    @user = UserDetail.find_by(user_id: current_user.id)
    #クレジットカード情報の取得
    @credit_card = CreditCard.find_by(user_id: current_user.id)
    #カート内アイテムの取得
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    # 合計金額の計算
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    # 送料込みの値段
    @include_fee = @items_sum+320
  end


  def done_transaction
    trade = Trade.where(status: 0, user_id: current_user.id)
    done_transaction = trade.update(status: 3)
  end

  private

  def credit_card_params
    params.require(:credit_card).permit(:number, :expire_month, :expire_day, :security_code).merge(user_id: current_user.id)
  end

end

