require "test_helper"

class DiceControllerTest < ActionDispatch::IntegrationTest
  test "should get roll" do
    get dice_roll_url
    assert_response :success
  end
end
