class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
		@songs = @artist.songs
		@playlist_song = PlaylistSong.new
		@playlist = Playlist.new
		@user = User.find(session[:user_id])
	end


	
end
