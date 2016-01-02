module UsersHelper

  def age
    today = Date.today
    dob = User.find(params[:id]).birthday
    @age = dob.year - today.year
    @age -= 1 if dob.strftime("%m%d").to_i > today.strftime("%m%d").to_i
  end

end
