require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | HouseWork App"
    assert_select "a[href=?]", "#create", text:"Create room!"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | HouseWork App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | HouseWork App"
  end

end
