class AddColumnCouponToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :coupon, :integer
  end
end
