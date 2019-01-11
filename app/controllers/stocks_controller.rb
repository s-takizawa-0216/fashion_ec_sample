class StocksController < ApplicationController
  def index
    @stock = Stock.new
    shop = Shop.find(1)
    @items = shop.items
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to stocks_path
    else
      render :new
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:item_id, :color_id, :size_id, :count)
  end
end
