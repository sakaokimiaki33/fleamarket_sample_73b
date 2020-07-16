require 'test_helper'

class ProductExhibiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_exhibi_index_url
    assert_response :success
  end

end
