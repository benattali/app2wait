require 'test_helper'

class GroupsUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get groups_users_new_url
    assert_response :success
  end

  test "should get create" do
    get groups_users_create_url
    assert_response :success
  end

  test "should get edit" do
    get groups_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get groups_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get groups_users_destroy_url
    assert_response :success
  end

end
