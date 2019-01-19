class RemoveColumnsToMarket < ActiveRecord::Migration[5.2]
  def change
    remove_column :markets, :amount,:integer,  null: false, default: 0
    add_column :markets, :total,:integer,  null: false, default: 0
  end
end
