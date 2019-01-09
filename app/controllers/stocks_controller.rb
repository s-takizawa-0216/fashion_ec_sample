class StocksController < ApplicationController
  def index
    shop = Shop.find(1)
    @items = shop.items
  end
end
