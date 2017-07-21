require "calculadora/version"

module Calculadora

  def self.sum num1,num2
    num1 + num2
  end

  def self.times num1,num2
    num1 * num2
  end

  def self.div num1,num2
    num1 / num2
  end

  def self.sumarray arr

    suma = 0
    arr.each do |sumNum|
      suma += sumNum if sumNum.is_a? Integer
    end

    suma

  end


end
