class AddColumnsToUserDtail < ActiveRecord::Migration[5.2]
  def change
    add_column :user_details, :gender, :string, null: false
    add_column :user_details, :birth_year, :integer, null: false
    add_column :user_details, :birth_month, :integer, null: false
    add_column :user_details, :birth_day, :integer, null: false
    add_column :user_details, :postal_code, :integer, null: false
  end
end
