require "application_system_test_case"

class ClassPlansTest < ApplicationSystemTestCase
  setup do
    @class_plan = class_plans(:one)
  end

  test "visiting the index" do
    visit class_plans_url
    assert_selector "h1", text: "Class Plans"
  end

  test "creating a Class plan" do
    visit class_plans_url
    click_on "New Class Plan"

    fill_in "Start date", with: @class_plan.start_date
    click_on "Create Class plan"

    assert_text "Class plan was successfully created"
    click_on "Back"
  end

  test "updating a Class plan" do
    visit class_plans_url
    click_on "Edit", match: :first

    fill_in "Start date", with: @class_plan.start_date
    click_on "Update Class plan"

    assert_text "Class plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Class plan" do
    visit class_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class plan was successfully destroyed"
  end
end
