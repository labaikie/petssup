class StaticPagesController < ApplicationController

  def home
      @random = grab_random
      @user = User.new
      data = HTTParty.get("http://content.guardianapis.com/search?q=pet&pets&animal&lifestyle&from-date=2015-12-01&api-key=8327ea7e-bc39-4935-a195-90e140c7c7e8")
      response = JSON.parse(data.body)
      @news = response['response']['results'][0..10]
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
