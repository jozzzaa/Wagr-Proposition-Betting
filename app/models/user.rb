class User < ApplicationRecord
	has_secure_password
	has_many :bets
	has_many :propositions
	has_attached_file :profile_image, styles: {thumb: "100x100>" }, default_url: "https://www.placecage.com/200/300"
	validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\z/


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
