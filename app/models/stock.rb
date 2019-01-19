class Stock < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :trades
<<<<<<< HEAD
  has_many :fav_stocks
=======

>>>>>>> master
  belongs_to :item
  belongs_to :color
  belongs_to :size


end
