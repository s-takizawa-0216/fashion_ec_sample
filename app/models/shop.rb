class Shop < ApplicationRecord
  has_many :items, dependent: :destroy
end
