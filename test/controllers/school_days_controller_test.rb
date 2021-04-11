require 'test_helper'

class SchoolDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_day = school_days(:one)
  end

  test "should get index" do
    get school_days_url
    assert_response :success
  end

  test "should get new" do
    get new_school_day_url
    assert_response :success
  end

  test "should create school_day" do
    assert_difference('SchoolDay.count') do
      post school_days_url, params: { school_day: { name: @school_day.name } }
    end

    assert_redirected_to school_day_url(SchoolDay.last)
  end

  test "should show school_day" do
    get school_day_url(@school_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_day_url(@school_day)
    assert_response :success
  end

  test "should update school_day" do
    patch school_day_url(@school_day), params: { school_day: { name: @school_day.name } }
    assert_redirected_to school_day_url(@school_day)
  end

  test "should destroy school_day" do
    assert_difference('SchoolDay.count', -1) do
      delete school_day_url(@school_day)
    end

    assert_redirected_to school_days_url
  end
end
