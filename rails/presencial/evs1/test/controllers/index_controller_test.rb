require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get holi" do
    get index_holi_url
    assert_response :success
  end

end
