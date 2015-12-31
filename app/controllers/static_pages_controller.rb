class StaticPagesController < ApplicationController

  def home
    @random = Post.all.sample.img_url
  end

end
