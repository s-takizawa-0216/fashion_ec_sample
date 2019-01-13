class AddColumnsToTrades < ActiveRecord::Migration[5.2]

  def change
    add_column :trades, :count, :integer, null: false
    add_column :trades, :total, :integer, null: false
  end

end
