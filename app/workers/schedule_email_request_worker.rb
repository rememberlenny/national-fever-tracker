class ScheduleEmailRequestWorker
  include Sidekiq::Worker

  def perform(*args)
    NationalFeverTrackerApp::Application.load_tasks
    Rake::Task['check_daily_emails'].invoke
  end
end
