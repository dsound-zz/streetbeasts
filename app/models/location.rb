class Location < ApplicationRecord
  extend Geocoder::Model::ActiveRecord

  geocoded_by :address
  after_validation :geocode
  has_one :post


end
