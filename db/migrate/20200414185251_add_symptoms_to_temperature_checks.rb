class AddSymptomsToTemperatureChecks < ActiveRecord::Migration[6.0]
  # Symptoms are tracked as individual boolean columns for simplicity.
  def change
    add_column :temperature_checks, :cough, :boolean, null: false, default: false
    add_column :temperature_checks, :sore_throat, :boolean, null: false, default: false
    add_column :temperature_checks, :difficulty_breathing, :boolean, null: false, default: false
    add_column :temperature_checks, :fatigue, :boolean, null: false, default: false
  end
end
