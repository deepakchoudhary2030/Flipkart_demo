require "test_helper"

class ListitemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listitem_index_url
    assert_response :success
  end
end
