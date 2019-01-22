class Size < ApplicationRecord

  has_many :stocks
  has_many :items

end
