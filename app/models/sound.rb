class Sound < ActiveRecord::Base
  belongs_to :user
  validates :sound_type, length: { maximum: 30 } || :sound_url
end
