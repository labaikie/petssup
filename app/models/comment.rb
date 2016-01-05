class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :body, length: { maximum: 140 } || :sound_id.sound_url
end
