class ChangeDataItemsToDeliveryWays < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :delivery_days, :integer
  end
end
