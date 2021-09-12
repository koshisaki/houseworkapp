require 'test_helper'

class WorktypeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get worktype_create_url
    assert_response :success
  end

end
