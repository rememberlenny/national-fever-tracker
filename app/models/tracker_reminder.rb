class TrackerReminder < ApplicationRecord
  validates :email, presence: true, uniqueness: { message: "has already been invited" } 

  after_create :send_first_email

  def send_first_email
    mail = DailyTemperatureCheckMailer.with(daily_temperature_check: self).first_email
    mail.deliver_now
  end

  def self.check_to_send()
    
  end
end
