class SoundsController < ActionController::Base
  before_action :current_user, only: [:create, :destroy, :new]

  def new
    @sound = Sound.new
  end

  def create
    @sound = current_user.sounds.build(sound_params)
    if @sound.save
      flash[:success] = "You have posted!"
      redirect_to user_path
    else
      flash[:error] = "Posting was unsuccessful"
      redirect_to new_sound_path
    end
  end

  def edit
    @sound = Sound.find(params[:id])
  end

  def update
    @sound = Sound.find(params[:id])
    if @sound.update_attributes(sound_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def sound_params
    params.require(:sound).permit(
      :type,
      :sound_url,
      :user_id
    )
  end

end
