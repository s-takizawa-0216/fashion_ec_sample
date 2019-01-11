class RemoveColumnsFromUserDetail < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_details, :type, :integer, null: false
  end
end
