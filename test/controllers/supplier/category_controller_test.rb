require "test_helper"

class Supplier::CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplier_category_index_url
    assert_response :success
  end
end
