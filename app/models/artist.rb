class Artist < ApplicationRecord
	has_many :songs
	has_many :shows

	def self.artists_sorted_by_num_of_songs
		self.all.sort_by {|artist| artist.songs.length}.reverse
	end

	def num_of_songs
		self.songs.length
	end

	def self.alive_artists
		Artist.all.select do |artist|
			artist.name != "Bob Marley" && artist.name != "Amy Winehouse"
		end
	end

	def sorted_shows
		self.shows.sort_by(&:time)
	end

end
