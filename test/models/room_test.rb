require 'test_helper'

class RoomTest < ActiveSupport::TestCase

  def setup
    @room = Room.new(name: "Example Room")
  end

  test "should be valid" do
    assert @room.valid?
  end

  # nameが空の時NG
  test "name should be present" do
    @room.name = ""
    assert_not @room.valid?
  end

  #21文字以上はNG
  test "name should be under 20" do
    @room.name = "a" * 21
    assert_not @room.valid?
  end

end
