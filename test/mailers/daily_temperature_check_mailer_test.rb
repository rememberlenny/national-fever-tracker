require 'test_helper'

class DailyTemperatureCheckMailerTest < ActionMailer::TestCase
  test "first_email" do
    mail = DailyTemperatureCheckMailer.first_email
    assert_equal "First email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "temperature_check" do
    mail = DailyTemperatureCheckMailer.temperature_check
    assert_equal "Temperature check", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
