class FavoritesController < ApplicationController


  def favorite
    @user = User.find(user_id)
    @favorites = FavStock.where(user_id:current_user.id)
    @favorite_shops = FavShop.where(user_id:current_user.id)
  end

  def favorite_shop
    @user = User.find(user_id)
    @favorite_shops = FavShop.where(user_id:current_user.id)
  end

  def create
    favorite_item = FavStock.find_by(stock_id: "#{params[:stock][:stock_id]}", user_id: current_user.id)
    unless favorite_item.present?
      @favorite = FavStock.new(stock_id: "#{params[:stock][:stock_id]}", user_id: current_user.id)
      @favorite.save
    end
  end

  def shop_create
    fav_shop = FavShop.new(fav_shop_params)
    fav_shop.save
  end

  def destroy
    @favorite = FavStock.find(params[:id])
    if @favorite.destroy
      redirect_to favorite_favorites_path
    end
  end

private

  def fav_shop_params
    params.require(:shop).permit(:shop_id , :user_id)
  end


end




