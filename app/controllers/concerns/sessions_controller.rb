class SessionsController < ApplicationController
	def create
		sign_in(auth_hash)
		redirect_to welcome_index_path
	end

	def auth_hash
    request.env['omniauth.auth']
  end
end

