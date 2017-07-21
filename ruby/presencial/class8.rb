
module DB
	class UserNotFoundError < StandardError
	end

	class Usuario
		@@usuarios = []

		def initialize email
			@email = email
			attr_reader email
		end

		def save
			@@usuarios << self
			# self.mail #todo es lo mismo
			# @mail
			# email
		end

		def self.find_mail email
			usuario = @@usuarios.find { |usuario| usuario.email == email }
			raise UserNotFoundError.new("No existe el correo #{email}") unless usuario
			usuario
		end
end

begin
	DB:Usuario.find_mail 'info@evs.com'
rescue DB::UserNotFoundError => e
	puts "ERROR #{e}"
end


# module DB
# 	class UserNotFoundError < StandardError, end

# 	class usuario
# 		@@usuarios = []
# 		def initialize

# 		end

# 		def save
# 			@@usuarios << self
# 		end

# 		def self.find_mail email
# 			@@usuarios.each do |pa|
# 				 if pa == email 
# 				 	return email
# 				else
# 					raise UserNotFoundError.new("No existe el usuario #{email}")
# 				end
# 			end
# 		end
# end












# class MyCustomError < StandardError
# end

# def aceptaroNo
# 	puts "Ingrese y/n para aceptar"
# 	pal = gets.chomp

# 	raise MyCustomError.new("No lo esperaba #{pal}") unless pal == "y" || pal == "n"
# end

# 3.times do
# 		begin 

# 		aceptaroNo

# 		rescue MyCustomError => error
# 			puts "Error: #{error}"
# 		else
# 			puts "Continuamos sin problemas"
		
#  		end
# end
	








# retry #repite el bloque del begin




# raise NotYesOrNoError

# class	MyCustomError < StandardError

# end


# def it_will_blow_up
# 	raise 'Me explote'
# 	# 9/0
# 	raise MyCustomError.new 'Fallo un condicional'
# end

# begin #
# 	# it_will_blow_up
# 	text = gets.chomp
# 	if text == 'incorrect'
# 		raise MyCustomError.new "no esperaba #{text} esperaba correct"
# 	end
# 	rescue RuntimeError => error # la asignamos a la varible error
# 		puts "RUNTIME_ERROR=#{error.message} #{error.backtrace}"
# 	rescue StandardError =>error
# 		puts "RUNTIME_ERROR=#{error}"
# 	else
# 		puts "Continuamos sin problemas"
# end




