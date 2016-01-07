class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :sound
  validates :body, length: { maximum: 140 }, presence: true, if: :no_sound?

  def no_sound?
    :sound_id == 0
  end

end
