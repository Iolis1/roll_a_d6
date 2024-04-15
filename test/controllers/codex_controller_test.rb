require "test_helper"

class CodexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get codex_index_url
    assert_response :success
  end
end
