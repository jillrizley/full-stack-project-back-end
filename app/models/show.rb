class Show < ApplicationRecord
 has_many :shows_users
 has_many :users, through: :shows_users
end
