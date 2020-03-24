class TrackerReminder < ApplicationRecord
  validates :email, presence: true

  after_create :send_first_email

  def send_first_email()
    
  end

  def self.check_to_send()
    
  end
end
