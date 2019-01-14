class AddColorToImage < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :color, foreign_key: true
  end
end
