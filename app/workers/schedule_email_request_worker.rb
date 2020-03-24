class ScheduleEmailRequestWorker
  include Sidekiq::Worker

  if Rails.env.development?
    sidekiq_options :queue => :tracker_development_default
  else
    sidekiq_options :queue => :tracker_production_default
  end

  def perform(*args)
    NationalFeverTrackerApp::Application.load_tasks
    Rake::Task['check_daily_emails'].invoke
  end
end
