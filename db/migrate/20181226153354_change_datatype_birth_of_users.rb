class ChangeDatatypeBirthOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :gender, :string, null: false
    change_column :users, :birth_year, :integer, null: false
    change_column :users, :birth_month, :integer, null: false
    change_column :users, :birth_day, :integer, null: false
  end
end
