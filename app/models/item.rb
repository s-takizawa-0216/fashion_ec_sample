class Item < ApplicationRecord

  is_impressionable counter_cache: true

  has_many :images
  belongs_to :brand
  accepts_nested_attributes_for :images
  validates :name, :discription, :price, :delivery_days, :wrapping, presence: true

end
