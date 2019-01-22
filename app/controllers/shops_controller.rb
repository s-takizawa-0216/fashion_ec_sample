class ShopsController < ApplicationController

  before_action :authentication

  def new
    @shop = Shop.new
  end

  def create
    shop = Shop.new(shop_params)
    if shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name).merge(user_id: current_user.id)
  end
end
