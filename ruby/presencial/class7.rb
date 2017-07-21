require 'bcrypt'


module Autenticacion
	include BCrypt

	def self.included mod
		"#{self} include in #{mod}"
		mod.extend ClassMethods
	end

	def pass
		@pass
	end

	def encrypt_pass pass
		@pass = Password.create pass
	end

	module ClassMethods
		def login? user, pass
			user.pass 
		end
	end
end

class Customer
	include Autenticacion
	attr_reader :email

	def initialize email, pass
		@email = email
		encrypt_pass pass
	end
end



simon = Customer.new 'info@evs.com', '1234567'
simon.pass 
Customer.login? simon, '13456'
Customer.login? simon, '1234567'



# # https://docs.ruby-lang.org/en/2.3.0/Comparable.html
# class Song
# 	include Comparable
# 	attr_accessor :duracion 
# 	def initialize name, duracion
# 		@name = name
# 		@duracion = duracion
# 	end

# 	def <=> other_song
# 		@duracion <=> other_song.duracion
# 	end
# end


# song1 = Song.new 'Strong 001', 3.60
# song2 = Song.new 'Strong 002', 2.20


# puts song1 > song2







# class Order
# 	include Enumerable
# 	attr_accessor :products

# 	def initialize
# 		@products = []
# 	end

# 	def each
# 		@products.each do |product|
# 			yield product
# 		end
# 	end

# 	def total
# 		t = 0
# 		self.each do |product|
# 			t += product[:price]
# 		end
# 		t
# 	end

# end

# orden = Order.new
# orden.products << {nanme:'', price: 5000}
# orden.products << {nanme:'', price: 400}
# orden.products << {nanme:'', price: 9000}
# orden.products << {nanme:'', price: 10}
# orden.products << {nanme:'', price: 500}



# puts orden.sort_by {|product| product[:price]}
# puts ''
# puts orden.min_by {|product| product[:price]}
# puts ''
# puts orden.max_by {|product| product[:price]}








# class MakeItReal
# 	include Enumerable
# 	attr_accessor :estudiantes

# 	def initialize
# 		@estudiantes = []
# 	end

# 	def each
# 		@estudiantes.each do |estudent|
# 			yield estudent
# 		end
# 	end

# end

# makeit = MakeItReal.new
# makeit.estudiantes << 3
# makeit.estudiantes << 1
# makeit.estudiantes << 4
# makeit.estudiantes << 2
# makeit.estudiantes << 5



# puts makeit.sort
# puts ''
# puts makeit.min
# puts ''
# puts makeit.max



# #https://docs.ruby-lang.org/en/2.3.0/Enumerable.html
# # module Enumerable 
# module FuncionesMake

# 	def min
# 		@estudiantes.min
# 	end

# 	def max
# 		@estudiantes.max
# 	end

# 	def sort
# 		@estudiantes.sort
# 	end
# end

# class MakeItReal
# 	attr_accessor :estudiantes
# 	# include FuncionesMake
# 	# include Enumerable

# 	def initialize
# 		@estudiantes = []
# 	end
# end

# makeit = MakeItReal.new
# makeit.estudiantes << 3
# makeit.estudiantes << 1
# makeit.estudiantes << 4
# makeit.estudiantes << 2
# makeit.estudiantes << 5



# puts makeit.sort
# puts ''
# puts makeit.min
# puts ''
# puts makeit.max



# module Inject

# 	def sum
# 		total = 0
# 		#self. each busca su
# 		each do |val|
# 			total += val
# 		end
# 		total
# 	end

# 	def prod
# 		total = 1
# 		each do |val|
# 			total *= val
# 		end
# 		total
# 	end
# end


# class Array
# 	include Inject
# end

# puts [1,2,3,4,5].sum
# puts [1,2,3,4,5].prod





# module Greeting
# 	def hello
# 		'Hello'
# 	end
# end


# class Persona
# 	# include Greeting # metodos de instancia
# 	extend Greeting # los incluye como metodos de clase
# 	attr_reader :name, :email

# 	def initialize name, email
# 		@name = name
# 		@email = email
# 	end
# end

# # mateo = Persona.new 'alberto','info@evs.co'
# # puts mateo.hello

# puts Persona.hello