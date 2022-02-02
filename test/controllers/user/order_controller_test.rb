require "test_helper"

class User::OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_order_index_url
    assert_response :success
  end
end
