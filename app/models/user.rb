class User < ActiveRecord::Base

  has_secure_password
  validates :email, presence: true, uniqueness: { case_sensitive: false}

  has_many :friendships
  has_many :posts
  has_many :friends, through: :friendships
end
