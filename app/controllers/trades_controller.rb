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

  def destroy_item
    trade = Trade.find(params[:trade_id])
    trade.destroy
    redirect_to trades_path
  end

  def order
  end

  def confirmation
  end

  def done_transaction
  end

end

