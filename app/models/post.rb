class Post < ApplicationRecord


  belongs_to :animal, required: false
  belongs_to :user, required: false
  has_one_attached :image
  has_one :place

end
