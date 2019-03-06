def get_songs_from_folders
  music = {}
  ##### FILE PATH #####
  ##### "../app/assets/songs" #####
  Dir.foreach("./app/assets/songs") do |folder|
    next if folder == '.' or folder == '..' or folder == ".DS_Store"

    def delete_extension(file_name)
      file_name.split(".")[0]
    end

    music[folder] = {}
    ##### FILE PATH #####
    ##### "../app/assets/songs/#{folder}" #####
    Dir.foreach("./app/assets/songs/#{folder}") do |song|
      next if song == '.' or song == '..' or folder == ".DS_Store"
      ##### FILE PATH #####
      music[folder][delete_extension(song)] = "./app/assets/songs/#{folder}/#{song}"
    end
  end
  music
end
#####
def create_songs(hash)
  hash.each do |artist_name, data|
    artist = Artist.find_by(name: artist_name)
    data.each do |song_name, song_path|
      Song.create(artist_id: artist.id, title: song_name, path: song_path)
    end
  end
end