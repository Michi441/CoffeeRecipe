require 'test_helper'

class CoffeeProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_profile = coffee_profiles(:one)
  end

  test "should get index" do
    get coffee_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee_profile_url
    assert_response :success
  end

  test "should create coffee_profile" do
    assert_difference('CoffeeProfile.count') do
      post coffee_profiles_url, params: { coffee_profile: { description: @coffee_profile.description, title: @coffee_profile.title } }
    end

    assert_redirected_to coffee_profile_url(CoffeeProfile.last)
  end

  test "should show coffee_profile" do
    get coffee_profile_url(@coffee_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee_profile_url(@coffee_profile)
    assert_response :success
  end

  test "should update coffee_profile" do
    patch coffee_profile_url(@coffee_profile), params: { coffee_profile: { description: @coffee_profile.description, title: @coffee_profile.title } }
    assert_redirected_to coffee_profile_url(@coffee_profile)
  end

  test "should destroy coffee_profile" do
    assert_difference('CoffeeProfile.count', -1) do
      delete coffee_profile_url(@coffee_profile)
    end

    assert_redirected_to coffee_profiles_url
  end
end
