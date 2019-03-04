class ChangeDateTimeToStringInShows < ActiveRecord::Migration[5.2]
  def change
  	change_column :shows, :time, :string
  end
end
