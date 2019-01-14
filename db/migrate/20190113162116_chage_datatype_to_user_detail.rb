class ChageDatatypeToUserDetail < ActiveRecord::Migration[5.2]
  def change
    change_column :user_details, :gender, :string, null: true
    change_column :user_details, :birth_year, :string, null: true
    change_column :user_details, :birth_month, :string, null: true
    change_column :user_details, :birth_day, :string, null: true
  end
end
