# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  # has_many :shows
end


  # has_many :bijou_shows, through: :user_bijou_shows
  # has_many :user_bijou_shows
