require "test_helper"

class FeaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get features_show_url
    assert_response :success
  end
end
