class Color < ApplicationRecord

  has_many :images
  has_many :stocks
end
