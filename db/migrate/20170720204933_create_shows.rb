class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.text :artist
      t.date :date
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
