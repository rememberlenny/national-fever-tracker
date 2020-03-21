require 'test_helper'

class TemperatureChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temperature_check = temperature_checks(:one)
  end

  test "should get index" do
    get temperature_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_temperature_check_url
    assert_response :success
  end

  test "should create temperature_check" do
    assert_difference('TemperatureCheck.count') do
      post temperature_checks_url, params: { temperature_check: { age: @temperature_check.age, loc_city: @temperature_check.loc_city, loc_state: @temperature_check.loc_state, loc_zip: @temperature_check.loc_zip, symptoms: @temperature_check.symptoms, temperature: @temperature_check.temperature } }
    end

    assert_redirected_to temperature_check_url(TemperatureCheck.last)
  end

  test "should show temperature_check" do
    get temperature_check_url(@temperature_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_temperature_check_url(@temperature_check)
    assert_response :success
  end

  test "should update temperature_check" do
    patch temperature_check_url(@temperature_check), params: { temperature_check: { age: @temperature_check.age, loc_city: @temperature_check.loc_city, loc_state: @temperature_check.loc_state, loc_zip: @temperature_check.loc_zip, symptoms: @temperature_check.symptoms, temperature: @temperature_check.temperature } }
    assert_redirected_to temperature_check_url(@temperature_check)
  end

  test "should destroy temperature_check" do
    assert_difference('TemperatureCheck.count', -1) do
      delete temperature_check_url(@temperature_check)
    end

    assert_redirected_to temperature_checks_url
  end
end
