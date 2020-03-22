require 'test_helper'

class TrackerRemindersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracker_reminder = tracker_reminders(:one)
  end

  test "should get index" do
    get tracker_reminders_url
    assert_response :success
  end

  test "should get new" do
    get new_tracker_reminder_url
    assert_response :success
  end

  test "should create tracker_reminder" do
    assert_difference('TrackerReminder.count') do
      post tracker_reminders_url, params: { tracker_reminder: { email: @tracker_reminder.email, time_to_send: @tracker_reminder.time_to_send } }
    end

    assert_redirected_to tracker_reminder_url(TrackerReminder.last)
  end

  test "should show tracker_reminder" do
    get tracker_reminder_url(@tracker_reminder)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracker_reminder_url(@tracker_reminder)
    assert_response :success
  end

  test "should update tracker_reminder" do
    patch tracker_reminder_url(@tracker_reminder), params: { tracker_reminder: { email: @tracker_reminder.email, time_to_send: @tracker_reminder.time_to_send } }
    assert_redirected_to tracker_reminder_url(@tracker_reminder)
  end

  test "should destroy tracker_reminder" do
    assert_difference('TrackerReminder.count', -1) do
      delete tracker_reminder_url(@tracker_reminder)
    end

    assert_redirected_to tracker_reminders_url
  end
end
