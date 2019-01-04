class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gender, :string, null: false
    add_column :users, :birth_year, :integer, null: false
    add_column :users, :birth_month, :integer, null: false
    add_column :users, :birth_day, :integer, null: false
    add_column :users, :postal_code, :integer, null: false
    add_column :users, :mail_magazine, :integer, null: false
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
