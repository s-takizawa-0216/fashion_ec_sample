class ChageDataTypeTpUserDetail < ActiveRecord::Migration[5.2]
  def change
    change_column :user_details, :phonenumber, :text
  end
end
