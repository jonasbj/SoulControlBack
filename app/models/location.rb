class Location < ActiveRecord::Base
  has_many :companies
  has_many :venues
end
