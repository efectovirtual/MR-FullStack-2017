require 'test_helper'

class CalculadoraTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Calculadora::VERSION
  end

  # def test_it_does_something_useful
  #   assert false
  # end

  # def test_it_sums_two_positive_number
  #   sum = Calculadora.sum(2,4)
  #   assert sum == 8, 'sum should be 6'
  # end

   def test_it_sums_two_positive_number
    result = Calculadora.sum(2,4)
    assert_equal result, 6, 'sum should be 6'
   end


  def test_it_multiply_two_positive_number
    result = Calculadora.times(2,4)
    assert_equal result, 8, 'result should be 8'
  end

  def test_it_multiply_two_numbers_with_diferent_sign
    result = Calculadora.times(2,-4)
    assert_equal result, -8, 'result should be 8'
  end

  def test_it_should_raise_error_if_dividin_by_zero
    assert_raises ZeroDivisionError do
      Calculadora.div(2,0)
    end
  end


  # Suma array

  def test_suma_array
    result = Calculadora.sumarray([1,2,3,4])
    assert_equal result, 10, 'result should be 10'
  end


  def test_suma_array2
    result = Calculadora.sumarray([-1,-2,-3,-4])
    assert_equal result, -10, 'result should be -10'
  end


  def test_suma_array3
    result = Calculadora.sumarray([1,-2,3,-4])
    assert_equal result, -2, 'result should be -2'
  end


  def test_suma_array4
    result = Calculadora.sumarray(["1",2,"4","-5"])
    assert_equal result, 2, 'result should be 2'
  end

  



















end
