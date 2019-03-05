class PlaylistsController < ApplicationController

	def index
		@user = User.find(session[:user_id])
	end

	def show
		@playlist = Playlist.find(params[:id])
	end

	def create
		@playlist = Playlist.create(playlist_params)
	end

	private

	def playlist_params
		params.require(:playlist).permit(:title, :user_id)
	end
end
