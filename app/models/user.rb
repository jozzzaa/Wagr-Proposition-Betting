class User < ApplicationRecord
	has_secure_password
	has_many :bets
	has_many :propositions


	# validates :email, uniqueness: true
  # validates :password, :email, presence: true

	def admin?
		if self.account_type == "admin"
			return true
		else
			return false
		end
	end

	def referee?
		if self.account_type == "ref"
			return true
		else
			return false
		end
	end

	def standard?
		if self.account_type == "standard"
			return true
		else
			return false
		end
	end

end
