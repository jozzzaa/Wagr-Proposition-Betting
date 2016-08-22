class Proposition < ApplicationRecord
  belongs_to :user
  has_many :bets
  
end
