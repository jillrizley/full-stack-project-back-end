# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :shows_users
  has_many :shows, through: :shows_users
end
