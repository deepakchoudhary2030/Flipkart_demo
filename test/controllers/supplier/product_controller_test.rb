require "test_helper"

class Supplier::ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplier_product_index_url
    assert_response :success
  end
end
