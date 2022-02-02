require "test_helper"

class Admins::SubcategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_subcategory_index_url
    assert_response :success
  end
end
