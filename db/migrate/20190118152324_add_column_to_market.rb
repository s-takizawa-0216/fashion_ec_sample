class AddColumnToMarket < ActiveRecord::Migration[5.2]
  def change
    remove_column :markets, :ave_age
    add_column :markets, :items, :integer,  null: false, default: 0
  end
end
