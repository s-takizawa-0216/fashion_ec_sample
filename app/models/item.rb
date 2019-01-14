class Item < ApplicationRecord

  is_impressionable counter_cache: true
  belongs_to :shop
  belongs_to :parent_category, class_name: 'Category', :foreign_key => 'parent_category_id'
  belongs_to :child_category, class_name: 'Category', :foreign_key => 'child_category_id'
  belongs_to :brand

  has_many :stocks
  has_many :images
  accepts_nested_attributes_for :images

  validates :name, :discription, :price, :delivery_days, :wrapping, :shop_id, :parent_category_id, :child_category_id, presence: true
  has_many :images, dependent: :destroy
  has_many :stocks, dependent: :destroy


end
