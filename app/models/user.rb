class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[google_oauth2]

  has_one :user_detail
  has_one :credit_card
  has_one :shop

  has_many :credit_cards
  has_many :shippings
  has_many :fav_stocks

  validates :email, :password, :postal_code, presence: true

  def self.find_omniauth(auth)
    self.where(provider: auth.provider, uid: auth.uid).first
  end

end
