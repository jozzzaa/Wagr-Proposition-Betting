class Proposition < ApplicationRecord
  belongs_to :user
  has_many :bets
  validates :title, :description, :deadline, presence: true
end
