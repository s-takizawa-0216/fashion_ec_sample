class FavoritesController < ApplicationController


  def favorite
    @user = User.find(user_id)
    @favorites = FavStock.where(user_id:current_user.id)
  end

  def create
    @favorite = FavStock.new(stock_id: "#{params[:stock][:stock_id]}", user_id: current_user.id)
    @favorite.save
  end

  def destroy
    @favorite = FavStock.find(params[:id])
    if @favorite.destroy
      redirect_to favorite_favorites_path
    end
  end


end




