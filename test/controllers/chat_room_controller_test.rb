require 'test_helper'

class ChatRoomControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chat_room_new_url
    assert_response :success
  end

  test "should get delete" do
    get chat_room_delete_url
    assert_response :success
  end

  test "should get show" do
    get chat_room_show_url
    assert_response :success
  end

end
