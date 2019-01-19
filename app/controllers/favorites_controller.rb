class FavoritesController < ApplicationController
  protect_from_forgery except: :multi_delete

  def favorite
    @favorites = FavStock.where(user_id: current_user.id)
    @shops = Stock.where(id:@favorites.uniq{|i|i.stock_id}.pluck(:stock_id)).uniq{|e|e.shop_id}
    @categories = Item.where(id:Stock.where(id:@favorites.uniq{|i|i.stock_id}.pluck(:stock_id)).pluck(:item_id))
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

  def multi_delete
    delete = FavStock.where(id: params[:stock_id])
    delete.delete_all
    redirect_to favorite_favorites_path
  end

end





