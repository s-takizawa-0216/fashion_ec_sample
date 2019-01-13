class Stock < ApplicationRecord

  has_many :trades
  belongs_to :item
  belongs_to :color
  belongs_to :size

end
