class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.string     :family_name, null: false
      t.string     :first_name, null: false
      t.string     :family_name_kana, null: false
      t.string     :first_name_kana, null: false
      t.string     :prefecture, null: false
      t.string     :address1, null: false
      t.string     :address2, null: false
      t.string     :phonenumber, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
