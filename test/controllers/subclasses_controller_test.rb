require "test_helper"

class SubclassesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get subclasses_show_url
    assert_response :success
  end
end
