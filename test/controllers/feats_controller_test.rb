require "test_helper"

class FeatsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get feats_show_url
    assert_response :success
  end
end
