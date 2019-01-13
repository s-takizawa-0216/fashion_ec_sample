class Item < ApplicationRecord

  belongs_to :shop
  belongs_to :parent_category, class_name: 'Category', :foreign_key => 'parent_category_id'
  belongs_to :child_category, class_name: 'Category', :foreign_key => 'child_category_id'
  belongs_to :brand

  has_many :stocks
  has_many :images

  accepts_nested_attributes_for :images

  validates :name, :discription, :price, :delivery_days, :wrapping, presence: true

end
