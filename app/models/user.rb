class User < ApplicationRecord
	has_many :playlists

	has_secure_password

	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates :password_confirmation, presence: true

	def playlist_title=(playlist_title)
	  if !self.playlists.map(&:title).include?(playlist_title)
		self.playlists << Playlist.create(title: playlist_title)
	  else 
	  	Playlist.find_by(title: playlist_title)
	  end
	end

	def playlist_title
		# self.playlists.find_by(title: )
		# self.playlists.find_by(id: )
	end
end
