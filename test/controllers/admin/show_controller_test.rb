require "test_helper"

class Admin::ShowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_show_index_url
    assert_response :success
  end
end
