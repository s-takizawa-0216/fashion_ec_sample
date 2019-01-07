class Stock < ApplicationRecord
  has_many :trades
  belongs_to :item
end
