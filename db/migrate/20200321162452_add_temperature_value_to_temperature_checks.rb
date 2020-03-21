class AddTemperatureValueToTemperatureChecks < ActiveRecord::Migration[6.0]
  def change
    add_column :temperature_checks, :temperature_value, :decimal
  end
end
