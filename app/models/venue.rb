class Venue < ActiveRecord::Base
  has_many :venue_users
  has_many :users, through: :venue_users
  has_many :events
end
