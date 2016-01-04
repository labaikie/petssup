class StaticPagesController < ApplicationController

  def home
    @random = User.all.sample.profile_img
  end

end
