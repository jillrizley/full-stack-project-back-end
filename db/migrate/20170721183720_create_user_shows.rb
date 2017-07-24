class CreateUserShows < ActiveRecord::Migration[5.0]
  def change
    create_table :user_shows do |t|
      t.references :user, foreign_key: true
      t.references :shows, foreign_key: true

      t.timestamps
    end
  end
end
