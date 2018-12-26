class ChangeDatatypeBirthYearOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :gender, :string, null: true
    change_column :users, :birth_year, :integer, null: true
    change_column :users, :birth_month, :integer, null: true
    change_column :users, :birth_day, :integer, null: true
  end
end
