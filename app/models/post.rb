class Post < ApplicationRecord


  belongs_to :animal, required: false
  belongs_to :user, required: false

  # geocoded_by :ip_address
  #
  # after_validation :geocode

  has_one_attached :image
  # delegate :filename, to: :image, allow_nil: true
  # delegate_missing_to :image



end
