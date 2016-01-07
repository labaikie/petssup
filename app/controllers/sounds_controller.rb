class SoundsController < ApplicationController

  before_action :current_user, only: [:create, :destroy]

  def create
    @sound = current_user.sounds.build(sound_params)
    if @sound.save
      flash[:success] = "You've added a voice!"
      redirect_to :back
    else
      flash[:error] = "Adding voice was unsuccessful"
    end
  end

  def destroy
    @sound = Sound.find(params[:id])
    if @sound.user == current_user
      @sound.destroy
      redirect_to :back
    end
  end

  private

  def sound_params
    params.require(:sound).permit(
      :sound_type,
      :sound_url
    )
  end

end
