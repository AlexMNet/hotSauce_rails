class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.forgotPassword.subject
  #
  def forgotPassword
    # Generate password reset token
    @token = params[:user].signed_id(purpose: "password_reset", expires_in: 15.minutes)

    # Send email to user
    mail to: params[:user].email
  end
end
