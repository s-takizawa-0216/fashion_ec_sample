class Color < ApplicationRecord
  has_many :stocks
  has_many :images
end
