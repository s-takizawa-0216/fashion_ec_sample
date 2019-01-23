class Shop < ApplicationRecord

  has_many :items, dependent: :destroy
  has_many :stocks, dependent: :destroy
  belongs_to :user

end
