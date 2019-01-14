class UserDetail < ApplicationRecord

  belongs_to :user

  validates :family_name, :first_name, :family_name_kana, :first_name_kana, :prefecture, :address1, :phonenumber, :postal_code, presence: true

end
