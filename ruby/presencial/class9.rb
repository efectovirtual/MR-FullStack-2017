














# module Dojo
# 	A = 4
# 	module Kata
# 		module Roulette
# 			class ScopeIn
# 				Dojo::A = 29
# 				def push
# 					A
# 				end
# 			end
# 		end
# 	end
# end


# a = Dojo::Kata::Roulette::ScopeIn.new
# puts a.push

# puts Dojo::A









# class EmptyNameError < StandardError
# end

# class Under18Error < StandardError
# end


# def pUsuario
# 	puts "Ingrese el usuario"
# 	usuario = gets.chomp

# 	raise EmptyNameError.new("Error en el usuario, No puede estar vacio") if usuario.empty? || usuario =~ /\s+/
# end


# def pEdad
# 	puts "Ingrese la Edad"
# 	usuario = gets.chomp

	
# 	raise Under18Error.new("Error en la edad - Eres menor de edad") if usuario.to_i < 18
# 	raise ArgumentError.new("Error en la edad - Debe ingresar un Número") if usuario =~ /\d+/
	
# end


# begin
# 	pUsuario
# 	pEdad
	
# 	rescue EmptyNameError => error
# 		puts "Error: #{error}"

# 	rescue ArgumentError => error
# 		puts "Error: #{error}"

# 	rescue Under18Error => error
# 		puts "Error: #{error}"

# end













# def divisor

# 		puts "Ingrese el número: 1 "
# 		num1 = gets.chomp

# 		puts "Ingrese el número: 2"
# 		num2 = gets.chomp

# 		raise ZeroDivisionError.new("Problema al dividir") if num1 == 0
# 		num1.to_i/num2.to_i
			
# 		end	
# end

# total = 0
# while true

# 	begin

# 		divisor
# 		break if = text == "exit"
			
# 	rescue ZeroDivisionError

# 		puts total
# 		puts "ERROR - No se puede dividir por cero"
	
# 	end
# end