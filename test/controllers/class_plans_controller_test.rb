require 'test_helper'

class ClassPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_plan = class_plans(:one)
  end

  test "should get index" do
    get class_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_class_plan_url
    assert_response :success
  end

  test "should create class_plan" do
    assert_difference('ClassPlan.count') do
      post class_plans_url, params: { class_plan: { start_date: @class_plan.start_date } }
    end

    assert_redirected_to class_plan_url(ClassPlan.last)
  end

  test "should show class_plan" do
    get class_plan_url(@class_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_plan_url(@class_plan)
    assert_response :success
  end

  test "should update class_plan" do
    patch class_plan_url(@class_plan), params: { class_plan: { start_date: @class_plan.start_date } }
    assert_redirected_to class_plan_url(@class_plan)
  end

  test "should destroy class_plan" do
    assert_difference('ClassPlan.count', -1) do
      delete class_plan_url(@class_plan)
    end

    assert_redirected_to class_plans_url
  end
end
