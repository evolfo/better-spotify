class ApplicationController < ActionController::Base

	def welcome
		if session[:user_id]
			@artists = Artist.all
		else
			redirect_to '/login'
		end
	end

end
