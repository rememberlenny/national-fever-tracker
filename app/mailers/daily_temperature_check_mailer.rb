class DailyTemperatureCheckMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.daily_temperature_check_mailer.first_email.subject
  #
  def first_email
    @daily_temperature_check = params[:daily_temperature_check]
    mail(
      to: "#{@daily_temperature_check.email}",
      from: "Leonard from NFT <#{Jumpstart.config.support_email}>",
      subject: 'Thanks for signing up to track your temperature!',
      :track_opens => 'true'
    )
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
