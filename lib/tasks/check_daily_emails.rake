desc "This task is called by the Heroku scheduler add-on"
task :check_daily_emails => :environment do
  puts "Sending reminder..."
  TrackerReminder.check_to_send()
  puts "done."
end