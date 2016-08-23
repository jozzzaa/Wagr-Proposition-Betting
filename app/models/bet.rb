class Bet < ApplicationRecord
  belongs_to :user
  belongs_to :proposition
  validates :amount, presence: true
  # need to put in validation for bet_side later
end
