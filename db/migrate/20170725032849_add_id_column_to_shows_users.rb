class AddIdColumnToShowsUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :shows_users, :id, :primary_key
  end
end
