class User < ApplicationRecord

  has_many :posts
  has_many :animals, through: :posts
  has_one :location 
  has_secure_password


end
