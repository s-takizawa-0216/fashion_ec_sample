class RenameColumnToShipping < ActiveRecord::Migration[5.2]
  def change
    rename_column :shippings, :prefecture, :prefecture_code
  end
end
