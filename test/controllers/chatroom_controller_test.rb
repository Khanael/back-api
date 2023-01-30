require "test_helper"

class ChatroomControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chatroom_create_url
    assert_response :success
  end

  test "should get destroy" do
    get chatroom_destroy_url
    assert_response :success
  end

  test "should get update" do
    get chatroom_update_url
    assert_response :success
  end
end
