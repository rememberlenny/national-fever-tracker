class TemperatureCheck < ApplicationRecord
  validate :temperature_check
  validate :temperature_value_min
  # validates :symptoms, presence: true
  validates :age, presence: true
  # validates :loc_city, presence: true
  validates :loc_zip, presence: true, length: { minimum: 5 }
  # validates :loc_state, presence: true

  def temperature_value_min
    if !temperature_value.blank? && temperature_value < 90 || temperature_value > 110
      errors.add(:temperature_value, "should be in fahrenheit")
    end
  end

  def temperature_check
    if temperature.blank? && temperature_value.blank?
      errors.add(:temperature_value, "cant blank")
   end
  end
end
