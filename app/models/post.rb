class Post < ApplicationRecord

  belongs_to :location
  has_many :comments, as: :commentable

  belongs_to :animal, required: false
  belongs_to :user, required: false
  has_one_attached :image

  validates :title, presence: true
  validates :description, length: { minimum: 20,  maximum: 200 }



end
