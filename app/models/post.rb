class Post < ActiveRecord::Base
  belongs_to :user
  validates :body, length: { maximum: 140 } || :img_url || :video_url
end
