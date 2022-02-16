class RegistrationController < ApplicationController
  def new
    # just creates a user in memory that is not yet saved to the db
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created user!"
    else
      render :new
    end
  end

  private 
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end