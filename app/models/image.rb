class Image < ApplicationRecord

  belongs_to :item
  belongs_to :color

  mount_uploader :image, ImageUploader

  validates :image, presence: true

end
