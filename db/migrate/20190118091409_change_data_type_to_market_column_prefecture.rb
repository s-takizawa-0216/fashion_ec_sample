class ChangeDataTypeToMarketColumnPrefecture < ActiveRecord::Migration[5.2]
  def change
    change_column :markets, :prefecture, :string, unique:true, :primary => true
  end
end
