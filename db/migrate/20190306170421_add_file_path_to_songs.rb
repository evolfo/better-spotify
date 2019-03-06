class AddFilePathToSongs < ActiveRecord::Migration[5.2]
  def change
  	add_column :songs, :path, :string
  end
end
