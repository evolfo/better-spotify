class ChangeArtistIdToPlaylistIdOnPlaylistSongs < ActiveRecord::Migration[5.2]
  def change
  	rename_column :playlist_songs, :artist_id, :playlist_id
  end
end
