class Item < ApplicationRecord

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  validates :name, :discription, :price, :delivery_days, :wrapping, presence: true
  has_many :stocks, dependent: :destroy
  belongs_to :shop
  belongs_to :brand
end
