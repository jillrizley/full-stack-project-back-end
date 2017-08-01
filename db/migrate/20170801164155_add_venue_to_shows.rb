class AddVenueToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :venue, :text
  end
end
