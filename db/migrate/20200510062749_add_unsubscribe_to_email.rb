class AddUnsubscribeToEmail < ActiveRecord::Migration[6.0]
  def change
    add_column :temperature_checks, :is_unsubscribed, :boolean, default: false
  end
end
