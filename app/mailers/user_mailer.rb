class UserMailer < ApplicationMailer
	def account_activation user
		@user = user
		mail to: user.mail, subject: "Account Activation"
	end

	def password_reset(user)
		@user = user
		mail to: user.email, subject: "Password reset"
	end
end