class TrackerReminder < ApplicationRecord
  validates :email, presence: true, uniqueness: { message: "has already been invited" }
  validates :loc_zip, length: { minimum: 5 }

  after_create :send_first_email

  def send_first_email
    mail = DailyTemperatureCheckMailer.with(daily_temperature_check: self).first_email
    mail.deliver_later
  end

  def self.check_to_send
    today = Date.today

    if today.monday?
      TrackerReminder.all.each do |reminder|
        next if reminder.is_unsubscribed
        mail = DailyTemperatureCheckMailer.with(daily_temperature_check: reminder).temperature_check
        mail.deliver_later
      end
    end
  end
end
