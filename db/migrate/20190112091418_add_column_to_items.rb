class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :impressions_count, :integer
  end
end
