require "test_helper"

class PasswordMailerTest < ActionMailer::TestCase
  test "forgotPassword" do
    mail = PasswordMailer.forgotPassword
    assert_equal "Forgotpassword", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
