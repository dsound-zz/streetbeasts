class User < ApplicationRecord
  has_secure_password

  has_many :posts
  has_many :animals, through: :posts
  has_one :location
  has_one_attached :avatar



  validates :email, presence: true, uniqueness: true


end
