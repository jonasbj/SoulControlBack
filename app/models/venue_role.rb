class VenueRole < ActiveRecord::Base
  has_many :venue_users
end
