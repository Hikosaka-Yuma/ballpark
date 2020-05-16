require 'test_helper'

class MeetRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get meet_rooms_show_url
    assert_response :success
  end

end
