require 'test_helper'

class WatchPaticipatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get watch_paticipates_new_url
    assert_response :success
  end

end
