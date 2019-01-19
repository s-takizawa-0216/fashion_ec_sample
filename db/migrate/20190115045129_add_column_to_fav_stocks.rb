class AddColumnToFavStocks < ActiveRecord::Migration[5.2]
  def change
    add_reference :fav_stocks, :user, foreign_key: true
    add_reference :fav_stocks, :stock, foreign_key: true
  end
end
