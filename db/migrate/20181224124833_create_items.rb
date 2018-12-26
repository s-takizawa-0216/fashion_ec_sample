class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :name,            null: false, maximum_length: 40
      t.text       :discription,     null: false, maximum_length: 1000
      t.string     :gender
      t.integer    :price,           null: false
      t.string     :material
      t.string     :origin
      t.string     :delivery_days,   null: false
      t.integer    :wrapping,        null: false
      t.references :shop,            foreign_key: true
      t.references :brand,           foreign_key: true
      t.references :parent_category, foreign_key: { to_table: :categories }
      t.references :child_category,  foreign_key: { to_table: :categories }
      t.timestamps
    end
  end
end
