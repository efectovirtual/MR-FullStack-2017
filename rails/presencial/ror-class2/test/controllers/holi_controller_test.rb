require 'test_helper'

class HoliControllerTest < ActionDispatch::IntegrationTest
  test "should get ver" do
    get holi_ver_url
    assert_response :success
  end

end
