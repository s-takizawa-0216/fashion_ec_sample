class TradesController < ApplicationController
  before_action :authenticate_user!

  def index
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @once_in_cart = Trade.where(status: 1, user_id: current_user.id)
    @items_sum = @open_trade.sum{|trade|trade[:total]}
    @sum_arigato = @items_sum*0.9
  end

  def minus_count
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(count: trade.count-1)
    total_price = trade.update(total: trade.stock.item.price*trade.count)
    redirect_to trades_path
  end

  def plus_count
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(count: trade.count+1)
    total_price = trade.update(total: trade.stock.item.price*trade.count)
    redirect_to trades_path
  end

  def erace_item
    trade = Trade.find(params[:trade_id])
    erace_from_cart = trade.update(status: 1)
    redirect_to trades_path
  end

  def return_to_cart
    trade = Trade.find(params[:trade_id])
    count_items = trade.update(status: 0)
    redirect_to trades_path
  end

  def order
    @user_detail = UserDetail.new
  end

  def add_userinfo
    @user_detail = User_detail.new
    redirect_to order_trades_path
  end

  def confirmation
  end


  def done_transaction
  end

  private

end

