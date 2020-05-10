class AddUnsubscribeToEmail < ActiveRecord::Migration[6.0]
  def change
    add_column :emails, :is_unsubscribed, :boolean, default: false
  end
end
