class Category < ApplicationRecord

  has_many :items, foreign_key: "parent_category_id", class_name: "Item"
  has_many :items, foreign_key: "child_category_id", class_name: "Item"

end
