class AddColumnsToUserDetal < ActiveRecord::Migration[5.2]
  def change
    add_column :user_details, :type, :integer, null: false
  end
end
