class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :friendships, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :sounds
  has_many :comments

end
