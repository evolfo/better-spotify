class PlaylistsController < ApplicationController

	before_action :find_playlist, only: [:show, :update, :destroy]

	def index
		@user = User.find(session[:user_id])
	end

	def show
	end

	def update
		@playlist.update(title: params[:playlist][:title])
		redirect_to @playlist
	end

	def create
		@artist = Artist.find(params[:artist][:id].to_i)
		@songs = @artist.songs
		@playlist = Playlist.find_or_create_by(title: params[:playlist][:playlist_title], user_id: current_user.id)
		@song = Song.find(params[:songs][:song_id].to_i)
		@playlist.songs << @song
		redirect_to @artist
	end

	def destroy
		@playlist.delete
		redirect_to '/'
	end

	private

	def find_playlist
		@playlist = Playlist.find(params[:id])
	end

	# def playlist_params
	# 	params.require(:playlist).permit(:title, :user_id)
	# end

	# def song_params
	# 	params.require(:songs).permit(:song_id)
	# end
end
