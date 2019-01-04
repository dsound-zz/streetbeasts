class User < ApplicationRecord

  has_secure_password
  has_many :comments, as: :commentable
  has_many :posts
  has_many :animals, through: :posts
  has_one :location
  has_one_attached :avatar

  validates :username, uniqueness: true
  validates :email, presence: true, uniqueness: true
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40},
                       :on => :create
  validates :password, :confirmation => true,
                       :length => {:within => 6..40},
                       :allow_blank => true,
                       :on => :update


end
