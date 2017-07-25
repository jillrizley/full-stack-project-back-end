class CreateShowsUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :shows, :users do |t|
      t.boolean :attended, default: false
    end
  end
end
