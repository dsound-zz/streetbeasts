class Location < ApplicationRecord
  attr_accessible :latitude, :longitude, :name
   has_many :posts

  geocoded_by :address
    after_validation :geocode
end
