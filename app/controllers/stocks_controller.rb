class StocksController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :check_shop, only: [:index]
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
    if @stock.destroy
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

  def sort
   stock = Stock.find(params[:stock_id])
   stock.update(stock_params)
   render nothing: true
  end

  private

  def stock_params
    params.require(:stock).permit(:item_id, :color_id, :size_id, :count, :image, :row_order_position)
  end

  def check_shop
    redirect_to root_path unless current_user.shop.present?
  end

  def set_shop
    @shop = Shop.find(current_user.shop.id)
    @items = @shop.items
  end

  def set_stock
    @stock = Stock.find(params[:id])
  end
end
