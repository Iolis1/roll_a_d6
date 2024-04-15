require "test_helper"

class GameMechanicsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get game_mechanics_show_url
    assert_response :success
  end
end
