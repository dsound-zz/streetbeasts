class Animal < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :posts
  has_many :users, through: :posts
  has_one_attached :image

  validates :species, uniqueness: true


end
