class Song < ApplicationRecord
	belongs_to :artist
	has_many :playlist_songs
	has_many :playlists, through: :playlist_songs

	def self.most_played_songs
		self.all.sort_by(&:play_count).reverse	
	end
end
