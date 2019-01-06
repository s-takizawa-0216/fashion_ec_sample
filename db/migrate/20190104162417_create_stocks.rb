class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.references :item, foreign_key: true
      t.references :size, foreign_key: true
      t.references :color, foreign_key: true
      t.integer :count, null: false
      t.timestamps
    end
  end
end
