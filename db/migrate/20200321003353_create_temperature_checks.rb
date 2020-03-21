class CreateTemperatureChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :temperature_checks do |t|
      t.string :temperature
      t.string :symptoms
      t.string :age
      t.string :loc_city
      t.string :loc_zip
      t.string :loc_state

      t.timestamps
    end
  end
end
