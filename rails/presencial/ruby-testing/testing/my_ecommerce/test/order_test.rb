require 'test_helper'

class OrderTest < Minitest::Test
  def test_model_exist_order
    order = MyEcommerce::Models::Order.new
    refute_nil order
  end

  # def test_orden_vacia_retorna_0
  #   order = MyEcommerce::Models::Order.new
  #   order.products.push ({name: 'Audifono', precio: 1000, cantidad: 1})
  #   assert_equal order.total, 1000
  # end

  # def test_orden_vacia_retorna_0
  #   order = MyEcommerce::Models::Order.new
  #   order.products.push ({name: 'Audifono', precio: 1000, cantidad: 1})
  #   order.products.push ({name: 'Medias', precio: 3000, cantidad: 5})
  #   assert_equal order.total, 16000
  # end

  # def test_0_order
  #   order = MyEcommerce::Models::Order.new
  #   order.products.push ({name: 'Audifono', precio: 1000, cantidad: 1})
  #   order.products.push ({name: 'Medias', precio: 3000, cantidad: 5})
  #   assert_equal order.total({code: 'C-random', discount: 0}), 16000
  # end

  # def test_50_order
  #   order = MyEcommerce::Models::Order.new
  #   order.products.push ({name: 'Audifono', precio: 1000, cantidad: 1})
  #   order.products.push ({name: 'Medias', precio: 3000, cantidad: 5})
  #   assert_equal order.total({code: 'C-random', discount: 50}), 8000
  # end

  # def test_100_order
  #   order = MyEcommerce::Models::Order.new
  #   order.products.push ({name: 'Audifono', precio: 1000, cantidad: 1})
  #   order.products.push ({name: 'Medias', precio: 3000, cantidad: 5})
  #   assert_equal order.total({code: 'C-random', discount: 100}), 0
  # end

  # def test_inicia_por_C
  #   order = MyEcommerce::Models::Order.new
  #   assert_raises(MyEcommerce::InvalidCouponError){
  #     order.total({code: 'D-random', discount: 100})
  #   }
  # end



  def test_country

    order = MyEcommerce::Models::Order.new
    
    order.products.push ({name: 'Audifono', precio: 1000, cantidad: 1})
    order.products.push ({name: 'Medias', precio: 3000, cantidad: 5})

    order.shipping.push ({country: 'usa', precio: 0})
    order.shipping.push ({country: 'mex', precio: 15})
    order.shipping.push ({country: 'cad', precio: 15})
    order.shipping.push ({country: 'international', precio: 25})

    assert_equal order.total({code: 'C-random', discount: 0, shipping: 'mex'}), 16025
    assert_equal order.total({code: 'C-random', discount: 0, shipping: 'usa'}), 16000

  end


















end





