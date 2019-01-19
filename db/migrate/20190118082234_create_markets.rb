class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets, id: false do |t|
      t.string :prefecture, null: false
      t.integer :count,  null: false, default: 0
      t.integer :amount,  null: false, default: 0
      t.integer :ave_age
      t.timestamps
    end
  end
end
