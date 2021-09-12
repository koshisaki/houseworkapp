require 'test_helper'

class CreateRoomTest < ActionDispatch::IntegrationTest
  
  test "no_name_room_is_NG" do
    get createroom_path
    assert_no_difference 'Room.count' do
      post rooms_path, params:{room: {name:""}}
    end
    assert_template 'rooms/new'
    assert_select "div.alert-danger", "1つのエラーがあります。"
  end

  test "create_valid_room" do
    get createroom_path
    assert_difference "Room.count", 1 do
      post rooms_path, params:{room: {name:"newroomtest"}}
    end
    follow_redirect!
    assert_template 'rooms/show'
    assert_select "div.alert-success", "ルームが作成されました。さっそく家事記録をつけましょう！"
  end

end
