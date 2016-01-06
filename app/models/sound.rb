class Sound < ActiveRecord::Base
  belongs_to :user
  validates :type, length: { maximum: 30 } || :sound_url
end
