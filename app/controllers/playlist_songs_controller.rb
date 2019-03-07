class PlaylistSongsController < ApplicationController
	def create
		# @song = Song.find(params["artist"][:song_id])
		@playlist_song = PlaylistSong.create(playlist_song_params)
		redirect_to artist_path(@playlist_song.song.artist)
	end

	def destroy
		# byebug
		@playlist_song = PlaylistSong.find(params[:id])
		@playlist = @playlist_song.playlist
		@playlist_song.delete
		redirect_to @playlist
	end

	private

	def playlist_song_params
		params.require(:playlist_song).permit(:song_id, :playlist_id)
	end
end
