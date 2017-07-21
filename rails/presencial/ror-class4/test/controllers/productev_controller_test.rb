require 'test_helper'

class ProductevControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productev_index_url
    assert_response :success
  end

end
