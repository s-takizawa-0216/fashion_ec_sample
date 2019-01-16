class Color < ApplicationRecord

  has_many :images
  has_many :stocks
  has_many :images
end
