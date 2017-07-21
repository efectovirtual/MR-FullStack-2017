
# raza = "Persa"
# ojos = "verdes"
# edad = 3

# if ojos == "rojos" || (edad > 2 && edad < 5)
#   puts "Me lo llevo!"
# else
#   puts "Paso!"
# end

class Person
  attr_accessor :name
  
  def initialize(name)
    @name = name
     raise ArgumentError, 'Error en el nombre' unless @name.nil? || @name.to_s.empty?
  end
end



Person.new("Pedro") # no lanza excepción
Person.new(nil) # lanza ArgumentError
Person.new("") # lanza ArgumentError

p = Person.new("Juan")
p.name = "Pedro" # no lanza excepción
p.name = nil # lanza ArgumentError
p.name = "" # lanza ArgumentError




# Codicional ternario
# ? = if
# : = else

# rango = 4 < 0 || 5 > 21

# puts rango ? "Continue" : "No esta en el tango"

# puts "ingresa numero Jugador 1"
# j1 = gets.chomp.to_i


# puts "ingresa numero Jugador 2"
# j2 = gets.chomp.to_i

# puts "Jugador 1 error solo entre 0 y 21" unless j1 >= 0 && j1 <= 21 
# puts "Jugador 2 error solo entre 0 y 21" if j2 < 0 || j2 > 21





# puts "ingresa numero Jugador 1"
# j1 = gets.chomp.to_i


# puts "ingresa numero Jugador 2"
# j2 = gets.chomp.to_i

# puts "Jugador 1 error solo entre 0 y 21" if j1 < 0 || j1 > 21 
# puts "Jugador 2 error solo entre 0 y 21" if j2 < 0 || j2 > 21





# ncartas = 2
# cartaj1 = []
# cartaj2 = []

# (1..ncartas).each do |i|
# 	puts "ingresa la carta # #{i} Jugador 1"
# 	cartaj1[i] = gets.chomp.to_i

# 	puts "ingresa la carta # #{i} Jugador 2"
# 	cartaj2[i] = gets.chomp.to_i

# end

# (1..ncartas).each do |i|

# 	if cartaj1[i] > cartaj2[i]
# 		puts "Gana Juego # #{i} el jugador 1"
# 	elsif cartaj1[i] == cartaj2[i]
# 		puts "Juego # #{i} Empate"		
# 	else
# 		puts "Juego # #{i} Gana el jugador 2"
# 	end

# end



# puts "ingresa edad"
# edad = gets.chomp

# puts "Igresa genero"
# genero = gets.chomp

# if edad < 18
# 	puts "Eres menor de edad"
# elsif edad == 15
# 	puts "Eres quinceañera"
# else
# 	puts "Eres mayor de edad"
# end




# num = 3
# v = []

# for i in 1..num
# 	puts "ingresa tu numero # #{i}"
# 	v[i] = gets.to_i
# end

# resultado = (v[1] + v[2] + v[3]) / num
# puts "Tu resultado es: #{resultado}"




# puts 'Hola', "Ingresa tu edad"
# edad = gets

# puts "Ingresa tu Nombre"
# nombre = gets

# puts "Tu nombre es: #{nombre} y tu edad es: #{edad}"