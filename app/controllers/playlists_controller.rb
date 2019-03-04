class PlaylistsController < ApplicationController
	def show
		@playlist = Playlist.find(params[:id])
	end

	def create
		
	end
end
