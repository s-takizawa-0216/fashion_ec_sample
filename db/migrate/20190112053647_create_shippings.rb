class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.integer    :genre,        null: false
      t.string     :name,         null: false
      t.integer    :postal_code,  null: false
      t.string     :prefecture,   null: false
      t.string     :address1,     null: false
      t.string     :address2
      t.integer    :phonenumber,  null: false
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
