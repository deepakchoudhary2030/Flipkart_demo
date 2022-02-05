require "test_helper"

class Admins::OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_order_index_url
    assert_response :success
  end
end
