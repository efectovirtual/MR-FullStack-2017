require 'test_helper'

class MyEcommerceTest < Minitest::Test

  def setup
    
  end

  def teardown
    
  end

  # def test_that_it_has_a_version_number
  #   refute_nil ::MyEcommerce::VERSION
  # end

  # def test_it_does_something_useful
  #   assert false
  # end

  # assert = verdadero
  # refute = falso


  # def test_instanciar_customer
  #   result = MyEcommerce::Customer.new
  #   refute_nil result   
  # end


  # def test_validad_si_existe_correo
  #   result = MyEcommerce::Customer.find 'alberto1@ev.co'
  #   refute_nil result
  # end


  # def test_validad_si_no_existe
  #   result = MyEcommerce::Customer.find ''
  #   assert_nil result
  # end
  






end






# Cree un nuevo proyecto my_ecommerce
#   Cree las pruebas para verificar que el modelo Customer, Order existen

# Cree las pruebas que comprueban que
#   dado un arreglo de customers [Customer, ...] y una función Customer.find 
#   que recibe como parametro un email, me debe retornar nil si no encuentra un customer
#   dentro dentro del arreglo con ese email o el customer si lo encuentra

# Casos:
#   No encontro el usuario
#   Encontro el usuario



# para una orden que contiene un arreglo de productos (use un arreglo de hashes)
# order.total retorna la sumatoria entre los precios y cantidad de estos 

# Casos:
# orden vacia => 0
# orden con 1 producto => numero
# orden con varios productos => numero

# para el caso anterior order.total recibe un cupon {code: '', discount: 0.1}, 
# aplique ese descuento al total
# Casos:
#   cupon invalido e.g(no empieza con C) => error
#   cupon invalido e.g(descuento negativo) => error
#   cupon del 0% => numero
#   cupon del 50% => numero
#   cupon del 100% => 0



# Para el caso anterior se desea que la orden tenga una dirección de shipping (envío), si  el pais del address 
# es interncional tendra un valor de 25USD si es de mexico a canada tendra un valor de 15USD y si es local dentro de estados unidos
# tendra un costo de 0USD , calcule el precio total de la orden con este nuevo valor, PD: no aplique el descuento al precio
# de shipping
#   Casos:
#     orden con productos, coupon, y address
#     orden con productos y address
#     orden sin productos pero con coupon, y address
#     orden sin productos pero con address









