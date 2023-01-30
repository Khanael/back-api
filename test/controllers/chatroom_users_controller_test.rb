require "test_helper"

class ChatroomUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chatroom_users_create_url
    assert_response :success
  end

  test "should get delete" do
    get chatroom_users_delete_url
    assert_response :success
  end

  test "should get update" do
    get chatroom_users_update_url
    assert_response :success
  end
end
