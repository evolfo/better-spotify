class ArtistsController < ApplicationController
	def show
		@artist = Artist.find(params[:id])
		@playlist = Playlist.new
		@user = User.find(session[:user_id])
	end
end
