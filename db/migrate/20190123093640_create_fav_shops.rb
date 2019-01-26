class CreateFavShops < ActiveRecord::Migration[5.2]
  def change
    create_table :fav_shops do |t|
      t.references :shop, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
