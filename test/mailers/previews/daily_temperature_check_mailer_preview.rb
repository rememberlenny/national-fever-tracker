# Preview all emails at http://localhost:3000/rails/mailers/daily_temperature_check_mailer
class DailyTemperatureCheckMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/daily_temperature_check_mailer/first_email
  def first_email
    @daily_temperature_check  = TrackerReminder.first
    DailyTemperatureCheckMailer.with(daily_temperature_check: @daily_temperature_check).first_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/daily_temperature_check_mailer/temperature_check
  def temperature_check
    DailyTemperatureCheckMailer.temperature_check
  end

end
