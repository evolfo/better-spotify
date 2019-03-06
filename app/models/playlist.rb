class Playlist < ApplicationRecord
	belongs_to :user
	has_many :playlist_songs, dependent: :destroy
	has_many :songs, through: :playlist_songs
	accepts_nested_attributes_for :songs

	validates :title, presence: true
	validates :user_id, presence: true

	# def title=(title)
 #      self.title = Playlist.find_or_create_by(title: title)
 #    end
 
 #    def title
 #      self.title ? self.title : nil
 #    end

    def playlist_title=(title)
      self.title = Playlist.find_or_create_by(title: title)
    end
 
    def playlist_title
      self.title ? self.title : nil
    end
end
