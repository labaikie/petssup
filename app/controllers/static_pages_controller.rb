class StaticPagesController < ApplicationController

  def home
      @random = grab_random
  end

  def grab_random
    @sample = User.all.sample.profile_img
    if @sample != "default-profile-img.png"
      return @sample
    else
      grab_random
    end
  end

end
