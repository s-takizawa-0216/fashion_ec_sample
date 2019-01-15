class ChageDatatypeAddItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :coupon, :decimal, precision: 2, scale: 1
  end
end
