class Stock < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :trades, dependent: :destroy

  belongs_to :item
  belongs_to :color
  belongs_to :size

  include RankedModel
  ranks :row_order

end
