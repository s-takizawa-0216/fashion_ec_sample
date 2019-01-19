class AddDiscriptionToImage < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :discription, :text
  end
end
