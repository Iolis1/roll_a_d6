require "test_helper"

class TraitsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get traits_show_url
    assert_response :success
  end
end
