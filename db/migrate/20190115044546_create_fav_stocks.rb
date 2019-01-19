class CreateFavStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :fav_stocks do |t|

      t.timestamps
    end
  end
end
