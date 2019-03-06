class ChangeVenueToCityOnShows < ActiveRecord::Migration[5.2]
  def change
  	rename_column :shows, :venue, :city
  end
end
