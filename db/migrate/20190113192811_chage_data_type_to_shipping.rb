class ChageDataTypeToShipping < ActiveRecord::Migration[5.2]
  def change
    change_column :shippings, :phonenumber, :text
  end
end
