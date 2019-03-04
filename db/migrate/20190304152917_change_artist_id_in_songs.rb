class ChangeArtistIdInSongs < ActiveRecord::Migration[5.2]
  def change
  	change_column :songs, :artist_id, :integer
  end
end
