class AddZipAgeToTrackerReminder < ActiveRecord::Migration[6.0]
  def change
    add_column :tracker_reminders, :age, :string
    add_column :tracker_reminders, :loc_zip, :string
  end
end
