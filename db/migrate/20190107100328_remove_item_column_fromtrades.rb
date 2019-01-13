class RemoveItemColumnFromtrades < ActiveRecord::Migration[5.2]
  def change
    remove_reference :trades, :item, foreign_key: true
  end
end
