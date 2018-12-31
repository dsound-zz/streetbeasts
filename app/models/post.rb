class Post < ApplicationRecord
  has_many :comments, as: :commentable

  belongs_to :animal, required: false
  belongs_to :user, required: false

  # geocoded_by :ip_address
  #
  # after_validation :geocode

  has_one_attached :image
  # delegate :filename, to: :image, allow_nil: true
  # delegate_missing_to :image

  validates :image, presence: true
  validates :title, presence: true



end
