class TemperatureCheck < ApplicationRecord
  validates :temperature, presence: true
  validates :symptoms, presence: true
  validates :age, presence: true
  validates :loc_city, presence: true
  validates :loc_zip, presence: true, length: { minimum: 5 }
  validates :loc_state, presence: true
end
