class PlaylistSong < ApplicationRecord
	belongs_to :song
	belongs_to :playlist

   def playlist_title=(title)
     self.playlist = Playlist.find_or_create_by(title: title)
   end
 
   def playlist_title
      self.playlist ? self.playlist.title : nil
   end
end
