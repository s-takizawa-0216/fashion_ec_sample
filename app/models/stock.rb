class Stock < ApplicationRecord

  mount_uploader :image, ImageUploader


  has_many :trades
  has_many :fav_stocks
  has_many :trades, dependent: :destroy
  belongs_to :item
  belongs_to :color
  belongs_to :size
  belongs_to :shop

  include RankedModel
  ranks :row_order


end
