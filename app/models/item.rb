class Item < ApplicationRecord

  has_many :images
  accepts_nested_attributes_for :images
  validates :name, :discription, :price, :delivery_days, :wrapping, presence: true

end
