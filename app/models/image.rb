class Image < ApplicationRecord

  belongs_to :item
  belongs_to :color, optional: true

  mount_uploader :image, ImageUploader

  validates :image, presence: true

end
