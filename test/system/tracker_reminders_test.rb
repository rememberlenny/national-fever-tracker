require "application_system_test_case"

class TrackerRemindersTest < ApplicationSystemTestCase
  setup do
    @tracker_reminder = tracker_reminders(:one)
  end

  test "visiting the index" do
    visit tracker_reminders_url
    assert_selector "h1", text: "Tracker Reminders"
  end

  test "creating a Tracker reminder" do
    visit tracker_reminders_url
    click_on "New Tracker Reminder"

    fill_in "Email", with: @tracker_reminder.email
    fill_in "Time to send", with: @tracker_reminder.time_to_send
    click_on "Create Tracker reminder"

    assert_text "Tracker reminder was successfully created"
    assert_selector "h1", text: "Tracker Reminders"
  end

  test "updating a Tracker reminder" do
    visit tracker_reminder_url(@tracker_reminder)
    click_on "Edit", match: :first

    fill_in "Email", with: @tracker_reminder.email
    fill_in "Time to send", with: @tracker_reminder.time_to_send
    click_on "Update Tracker reminder"

    assert_text "Tracker reminder was successfully updated"
    assert_selector "h1", text: "Tracker Reminders"
  end

  test "destroying a Tracker reminder" do
    visit edit_tracker_reminder_url(@tracker_reminder)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Tracker reminder was successfully destroyed"
  end
end
