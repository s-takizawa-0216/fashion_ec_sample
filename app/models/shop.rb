class Shop < ApplicationRecord

  has_many :items, dependent: :destroy
  belongs_to :user
  has_many :stocks, dependent: :destroy

end
