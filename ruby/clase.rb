# ------------------------------------------------------------------

class String
	def palindrome?
      t = self.downcase.scan(/\w/)
      t == t.reverse
	end
end

# ------------------------------------------------------------------

class Car

	attr_accessor :resultado

	def initialize
		@resultado = 0
	end
		
	def velocity()
		puts resultado
	end

	def accelerate(num=1)
		@resultado += num
	end

	def brake(num=1)
		@resultado -= num
	end
end

class Bus < Car
end


bus = Bus.new
bus.velocity # => 0

bus.accelerate
bus.velocity # => 1

bus.accelerate(2)
bus.velocity # => 3

bus.brake
bus.velocity # => 2

bus.brake(2)
bus.velocity # => 0










# class Car

# 	attr_accessor :resultado

# 	def initialize
# 		@resultado = 0
# 	end
		
# 	def velocity()
# 		puts resultado
# 	end

# 	def accelerate(num=1)
# 		@resultado += num
# 	end

# 	def brake(num=1)
# 		@resultado -= num
# 	end
# end

# car = Car.new
# car.velocity # => 0

# car.accelerate
# car.velocity # => 1

# car.accelerate(2)
# car.velocity # => 3

# car.brake
# car.velocity # => 2

# car.brake(2)
# car.velocity # => 0











# class Dog
# 	def bark
# 		"woof-woof"
# 	end
# end
