class User < ActiveRecord::Base
  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :artist_users
  has_many :artists, through: :artist_users

  has_many :event_user_statuses
  has_many :events, through: :event_user_statuses

  has_many :venue_users
  has_many :venues, through: :venue_users
end
