class User < ApplicationRecord
  has_secure_password

  has_many :posts
  has_many :animals, through: :posts
  has_one :location
  has_one_attached :avatar


  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :email, presence: true, uniqueness: true


end
