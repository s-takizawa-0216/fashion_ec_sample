class ChageDatatypeColumsToshipping < ActiveRecord::Migration[5.2]
  def change
    change_column :shippings, :prefecture, :string, null: false
  end
end
