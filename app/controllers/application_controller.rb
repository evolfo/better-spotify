class ApplicationController < ActionController::Base

	before_action :logged_in?
	helper_method :current_user

	def welcome
		@artists = Artist.all
	end

	def analytics
		@sorted_songs = Song.most_played_songs
		@sorted_artists = Artist.artists_sorted_by_num_of_songs
	end

	def current_user
		User.find(session[:user_id])
	end

	private

	def logged_in?
		if !session[:user_id]
			redirect_to controller: 'sessions', action: 'new'
		end
	end

end
