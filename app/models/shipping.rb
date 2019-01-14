class Shipping < ApplicationRecord

  belongs_to :user

  validates :genre, :name, :postal_code, :prefecture, :address1, :phonenumber, :user_id, presence: true

end

