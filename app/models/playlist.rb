class Playlist < ApplicationRecord
	belongs_to :user
	has_many :playlist_songs
	has_many :songs, through: :playlist_songs

	# def playlist_title=(title)
 #      self.title = Playlist.find_or_create_by(title: title)
 #    end
 
 #    def playlist_title
 #      self.title ? self.title : nil
 #    end
end
