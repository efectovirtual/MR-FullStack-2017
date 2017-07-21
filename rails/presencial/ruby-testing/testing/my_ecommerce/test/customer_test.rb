require 'test_helper'

class CustomerTest < Minitest::Test

  def test_model_exist_customer
    customer = MyEcommerce::Models::Customer.new
    refute_nil customer
  end

end