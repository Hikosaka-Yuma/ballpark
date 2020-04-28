require 'test_helper'

class MeetPaticipatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meet_paticipates_new_url
    assert_response :success
  end

end
