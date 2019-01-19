class Stock < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :trades
  has_many :fav_stocks
  belongs_to :item
  belongs_to :color
  belongs_to :size


end
