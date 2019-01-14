class ChageDataTypeToUserDetails < ActiveRecord::Migration[5.2]
  def change
    change_column :user_details, :address2, :string, null: true
  end
end
