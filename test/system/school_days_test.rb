require "application_system_test_case"

class SchoolDaysTest < ApplicationSystemTestCase
  setup do
    @school_day = school_days(:one)
  end

  test "visiting the index" do
    visit school_days_url
    assert_selector "h1", text: "School Days"
  end

  test "creating a School day" do
    visit school_days_url
    click_on "New School Day"

    fill_in "Name", with: @school_day.name
    click_on "Create School day"

    assert_text "School day was successfully created"
    click_on "Back"
  end

  test "updating a School day" do
    visit school_days_url
    click_on "Edit", match: :first

    fill_in "Name", with: @school_day.name
    click_on "Update School day"

    assert_text "School day was successfully updated"
    click_on "Back"
  end

  test "destroying a School day" do
    visit school_days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School day was successfully destroyed"
  end
end
