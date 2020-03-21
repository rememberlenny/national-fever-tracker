require "application_system_test_case"

class TemperatureChecksTest < ApplicationSystemTestCase
  setup do
    @temperature_check = temperature_checks(:one)
  end

  test "visiting the index" do
    visit temperature_checks_url
    assert_selector "h1", text: "Temperature Checks"
  end

  test "creating a Temperature check" do
    visit temperature_checks_url
    click_on "New Temperature Check"

    fill_in "Age", with: @temperature_check.age
    fill_in "Loc city", with: @temperature_check.loc_city
    fill_in "Loc state", with: @temperature_check.loc_state
    fill_in "Loc zip", with: @temperature_check.loc_zip
    fill_in "Symptoms", with: @temperature_check.symptoms
    fill_in "Temperature", with: @temperature_check.temperature
    click_on "Create Temperature check"

    assert_text "Temperature check was successfully created"
    assert_selector "h1", text: "Temperature Checks"
  end

  test "updating a Temperature check" do
    visit temperature_check_url(@temperature_check)
    click_on "Edit", match: :first

    fill_in "Age", with: @temperature_check.age
    fill_in "Loc city", with: @temperature_check.loc_city
    fill_in "Loc state", with: @temperature_check.loc_state
    fill_in "Loc zip", with: @temperature_check.loc_zip
    fill_in "Symptoms", with: @temperature_check.symptoms
    fill_in "Temperature", with: @temperature_check.temperature
    click_on "Update Temperature check"

    assert_text "Temperature check was successfully updated"
    assert_selector "h1", text: "Temperature Checks"
  end

  test "destroying a Temperature check" do
    visit edit_temperature_check_url(@temperature_check)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Temperature check was successfully destroyed"
  end
end
