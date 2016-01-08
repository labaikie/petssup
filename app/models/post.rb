class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :body, length: { maximum: 140 } || :img_url || :video_url
end
