require 'test_helper'

class EventsLevelsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get events_levels_new_url
    assert_response :success
  end

  test "should get create" do
    get events_levels_create_url
    assert_response :success
  end

  test "should get edit" do
    get events_levels_edit_url
    assert_response :success
  end

  test "should get update" do
    get events_levels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get events_levels_destroy_url
    assert_response :success
  end

end
