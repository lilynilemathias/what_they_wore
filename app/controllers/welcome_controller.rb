class WelcomeController < ApplicationController
	def index
		
		#binding.pry
	end
end 


# curl -F 'client_id=[your_client_id]' -F 'client_secret=[your_secret_key]' -F 'grant_type=authorization_code' -F 'redirect_uri=[redirect_url]' -F 'code=[code]' https://api.instagram.com/oauth/access_token