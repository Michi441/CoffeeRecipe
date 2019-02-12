require "application_system_test_case"

class CoffeeProfilesTest < ApplicationSystemTestCase
  setup do
    @coffee_profile = coffee_profiles(:one)
  end

  test "visiting the index" do
    visit coffee_profiles_url
    assert_selector "h1", text: "Coffee Profiles"
  end

  test "creating a Coffee profile" do
    visit coffee_profiles_url
    click_on "New Coffee Profile"

    fill_in "Description", with: @coffee_profile.description
    fill_in "Title", with: @coffee_profile.title
    click_on "Create Coffee profile"

    assert_text "Coffee profile was successfully created"
    click_on "Back"
  end

  test "updating a Coffee profile" do
    visit coffee_profiles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @coffee_profile.description
    fill_in "Title", with: @coffee_profile.title
    click_on "Update Coffee profile"

    assert_text "Coffee profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffee profile" do
    visit coffee_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffee profile was successfully destroyed"
  end
end
