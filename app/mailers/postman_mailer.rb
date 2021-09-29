class PostmanMailer < ApplicationMailer
	def purchased
		mail(:to=>'anumulah5@gmail.com',:subject=>'your purchase is succussfully added')
				
	end
end
