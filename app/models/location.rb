class Location < ApplicationRecord
  has_many :posts

  geocoded_by :address
  after_validation :geocode

  validates :address, uniqueness: true
  
end
