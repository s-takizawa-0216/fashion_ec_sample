class ChageDatatypeColumnToshipping < ActiveRecord::Migration[5.2]
  def change
    change_column :shippings, :prefecture_code, :integer, null: false
  end
end
