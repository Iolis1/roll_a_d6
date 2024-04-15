require "test_helper"

class CharacterDataControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get character_data_show_url
    assert_response :success
  end
end
