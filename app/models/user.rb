class User < ActiveRecord::Base

  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: { with: VALID_EMAIL_REGEX }
  has_many :friendships
  has_many :posts
  has_many :friends, through: :friendships
end
