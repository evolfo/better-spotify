class Song < ApplicationRecord
	belongs_to :artist
	has_many :playlist_songs
	has_many :playlists, through: :playlist_songs


	#This is for most viewed artists not most played songs
	def self.most_viewed_artists
		songs = self.all.sort_by(&:play_count).reverse.uniq(&:artist)	
	end
end
