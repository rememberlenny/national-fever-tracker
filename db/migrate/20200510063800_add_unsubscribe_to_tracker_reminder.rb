class AddUnsubscribeToTrackerReminder < ActiveRecord::Migration[6.0]
  def change
    add_column :tracker_reminders, :is_unsubscribed, :boolean, default: false
  end
end
