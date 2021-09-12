require 'test_helper'

class RoomMemberControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get room_member_new_url
    assert_response :success
  end

  test "should get create" do
    get room_member_create_url
    assert_response :success
  end

end
