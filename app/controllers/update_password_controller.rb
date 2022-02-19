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

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end