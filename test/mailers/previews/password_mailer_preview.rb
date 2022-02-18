# Preview all emails at http://localhost:3000/rails/mailers/password_mailer
class PasswordMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/password_mailer/forgotPassword
  def forgotPassword
    PasswordMailer.forgotPassword
  end

end
