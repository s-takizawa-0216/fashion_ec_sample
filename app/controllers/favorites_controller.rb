class FavoritesController < ApplicationController

  def create
    @user_id = current_user.id
    @stock_id = Stock.find(params[:id]).id
    @favorite = FavStock.new(stock_id: @stock_id, user_id: @user_id)
    @favorite.save
  end

  def destroy
    @favorite = FavStock.find(params[:id])
    if @favorite.destroy
      redirect_to favorite_users_path
    end
  end


end




