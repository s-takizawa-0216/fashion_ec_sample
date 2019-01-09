class Stock < ApplicationRecord
  belongs_to :item
  belongs_to :color
  belongs_to :size
end
