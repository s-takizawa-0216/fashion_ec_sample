class Item < ApplicationRecord

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :stocks, dependent: :destroy

  belongs_to :parent_category, class_name: 'Category', :foreign_key => 'parent_category_id'
  belongs_to :child_category, class_name: 'Category', :foreign_key => 'child_category_id'
  belongs_to :brand
  belongs_to :shop

  validates :name, :discription, :price, :delivery_days, :wrapping, presence: true
end
