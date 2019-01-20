class AddRowOrderToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :row_order, :integer
  end
end
