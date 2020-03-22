class CreateTrackerReminders < ActiveRecord::Migration[6.0]
  def change
    create_table :tracker_reminders do |t|
      t.string :email
      t.string :time_to_send

      t.timestamps
    end
  end
end
