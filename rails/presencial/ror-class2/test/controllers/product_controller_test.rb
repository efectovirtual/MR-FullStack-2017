require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get ver" do
    get product_ver_url
    assert_response :success
  end

end
