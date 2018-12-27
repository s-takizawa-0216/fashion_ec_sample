class ItemsController < ApplicationController
  
  def index
  end

  def new
    @item = Item.new
  end

  def create
  end

  private

  def create_params
  end

end
