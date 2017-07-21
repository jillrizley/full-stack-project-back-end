# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :shows, through: :user_shows
  has_many :user_shows
end
