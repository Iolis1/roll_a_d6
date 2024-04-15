require "test_helper"

class SubracesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get subraces_show_url
    assert_response :success
  end
end
