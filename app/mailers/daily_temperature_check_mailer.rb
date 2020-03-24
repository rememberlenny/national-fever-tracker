class DailyTemperatureCheckMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.daily_temperature_check_mailer.first_email.subject
  #
  def first_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.daily_temperature_check_mailer.temperature_check.subject
  #
  def temperature_check
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
