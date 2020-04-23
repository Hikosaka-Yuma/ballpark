require 'test_helper'

class WatchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get watchings_new_url
    assert_response :success
  end

end
