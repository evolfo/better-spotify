def get_songs_from_folders
  music = {}
  ##### FILE PATH #####
  ##### "../app/assets/songs" #####
  Dir.foreach("./app/assets/audios") do |folder|
    next if folder == '.' or folder == '..' or folder == ".DS_Store"

    def delete_extension(file_name)
      file_name.split(".")[0]
    end

    music[folder] = {}
    ##### FILE PATH #####
    ##### "../app/assets/songs/#{folder}" #####
    Dir.foreach("./app/assets/audios/#{folder}") do |song|
      next if song == '.' or song == '..' or folder == ".DS_Store"
      ##### FILE PATH #####
      i = 0
      music[folder][delete_extension(song)] = i += 1
    end
  end
  music
end
#####
def create_songs(hash)
  hash.each do |artist_name, data|
    artist = Artist.find_by(name: artist_name)
    data.each do |song_name, song_number|
      Song.create(artist_id: artist.id, title: song_name)
    end
  end
end