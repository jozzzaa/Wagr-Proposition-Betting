class Bet < ApplicationRecord
  belongs_to :user
  belongs_to :proposition
  validates :amount, :bet_side, presence: true
end
