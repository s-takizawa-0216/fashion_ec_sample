class StocksController < ApplicationController

  before_action :set_shop, only: [:index, :new, :edit]
  before_action :set_stock, only: [:destroy, :edit, :update]

  def index
  end

  def new
    @stock = Stock.new
  end

  def create
    stock = Stock.new(stock_params)
    if stock.save
      redirect_to stocks_path
    else
      render :index
    end
  end

  def destroy
    if @stock.delete
      redirect_to stocks_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @stock.update(stock_params)
      redirect_to stocks_path
    else
      render :index
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:item_id, :color_id, :size_id, :count, :image)
  end

  def set_shop
    shop = Shop.find(1)
    @items = shop.items
  end

  def set_stock
    @stock = Stock.find(params[:id])
  end
end
