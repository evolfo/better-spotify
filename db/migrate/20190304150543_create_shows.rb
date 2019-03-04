class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :venue
      t.datetime :time
      t.integer :artist_id

      t.timestamps
    end
  end
end
