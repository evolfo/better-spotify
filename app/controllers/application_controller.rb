class ApplicationController < ActionController::Base

	before_action :logged_in?

	def welcome
		@artists = Artist.all
	end

	private

	def logged_in?
		if !session[:user_id]
			redirect_to controller: 'sessions', action: 'new'
		end		
	end

end
