class Event < ActiveRecord::Base
  has_many :event_user_statuses
  has_many :users, through: :event_user_statuses
end
