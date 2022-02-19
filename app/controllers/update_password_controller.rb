class UpdatePasswordController < ApplicationController
  before_action :verify_logged_in

  def edit
  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: "Password Successfully Updated!"
    else
      render :edit
    end
  end

  def update
    if Current.user.authenticate(password_params[:current_password])
      if Current.user.update(password_params)
        redirect_to root_path, notice: "Password Successfully updated!"
      else
        render :edit
      end
    else
      redirect_to update_password_path, notice: "Current Password is incorrect"
    end
  end

  private 

  def password_params
    params.require(:user).permit(:password, :password_confirmation, :current_password)
  end

end