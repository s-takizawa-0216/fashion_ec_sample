class Shipping < ApplicationRecord

  belongs_to :user

  validates :number, :expire_month, :expire_day, :user_id, presence: true
end

