class PlaylistSongsController < ApplicationController
	def create
		# @song = Song.find(params["artist"][:song_id])
		@playlist_song = PlaylistSong.create(playlist_song_params)
		redirect_to artist_path(@playlist_song.song.artist)
	end

	private

	def playlist_song_params
		params.require(:playlist_song).permit(:song_id, :playlist_id)
	end
end
