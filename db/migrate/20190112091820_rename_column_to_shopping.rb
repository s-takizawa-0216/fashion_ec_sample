class RenameColumnToShopping < ActiveRecord::Migration[5.2]
  def change
    rename_column :shippings, :prefecture_code, :prefecture
  end
end
