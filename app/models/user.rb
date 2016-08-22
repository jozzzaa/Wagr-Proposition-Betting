class User < ApplicationRecord
	has_secure_password
	has_many :bets
	has_many :propositions
	validates :email, uniqueness: true
  validates :password, :email, presence: true
end
