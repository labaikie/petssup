class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :body, length: { maximum: 140 }, presence: true || :img_url, presence: true || :video_url, presence: true
end
