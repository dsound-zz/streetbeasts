class Post < ApplicationRecord
  has_many :comments, as: :commentable

  belongs_to :animal, required: false
  belongs_to :user, required: false
  has_one_attached :image

  validates :title, presence: true



end
