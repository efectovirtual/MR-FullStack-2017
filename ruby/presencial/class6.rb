


class Compania

	attr_accessor :empleadosc, :clientesc

	def initialize atributos = {}
		@empleados		= atributos[:empleados]
		@clientes		= atributos[:clientes]
		@accionistas	= atributos[:accionistas]
		@nombre			= atributos[:nombre]

		@empleadosc = []
		@clientesc = []
	end

	def mostrar
		"Su compañia es: #{@nombre}, tienes #{@empleados} empleados y #{clientes} clientes"
	end

	def despedir empleado
		@empleados.delete empleado
	end

	def contratar empleado
		@empleado << empleado
	end

end

class Persona
	def initialize atributos = {}
		@nombre	= atributos[:nombre]
		@edad 	= atributos[:edad]
		@genero	= atributos[:genero]
	end
end

class Empleado < Persona


	def initialize atributos = {}
		super atributos
		@horario	= atributos[:horario]
		@sueldo		= atributos[:sueldo]
		@cargo		= atributos[:cargo]
		@proyecto 	= atributos[:proyecto]
	end

	def cargo
		@cargo
	end


end

class Cliente < Persona


	def initialize credit_card, cuenta_bancaria, proyectos
		@credit_card		= credit_card
		@cuenta_bancaria	= cuenta_bancaria
		@proyectos			= proyectos
	end
end


class Gerente < Persona
	#documentos, area
end

class Desarrollador < Empleado
	#lenguajes, logros

	def initialize atributos = {}
		super atributos
		@lenguajes	= atributos[:lenguajes]
		@logros		= atributos[:logros]
	end

	def cargo
		"Full stack ninja #{super} y su sueldo es:#{@sueldo}"	
	end
end

alberto = Desarrollador.new ({
	nombre: 'alberto',
	edad: 'correo@evs.com',
	genero: 'Masculino',
	horario: '7:30 - 10:30',
	sueldo: '$7.500.000',
	cargo: 'Gerente',
	proyecto: 'Evs',
	lenguajes: 'Ruby',
	logros: 'ihosting'
})



# class Compania

# 	attr_accessor :empleados, :clientes, :accionistas, :nombre

# 	def initialize empleados, clientes, accionistas, nombre
# 		@empleados		= empleados
# 		@clientes		= clientes
# 		@accionistas	= accionistas
# 		@nombre			= nombre
# 	end

# 	def mostrar
# 		"Su compañia es: #{@nombre}, tienes #{@empleados} empleados y #{clientes} clientes"
# 	end

# end

# class Persona

# 	attr_accessor :nombre, :edad, :genero

# 	def initialize nombre, edad, genero
# 		@nombre	= nombre
# 		@edad 	= edad
# 		@genero	= genero
# 	end
# end

# class Empleado < Persona

# 	attr_accessor :horario, :sueldo, :cargo, :proyectos
# 	EMP = []

# 	def initialize nombre, edad, genero, horario, sueldo, cargo, proyecto
# 		@horario	= horario
# 		@sueldo		= sueldo
# 		@cargo		= cargo
# 		@proyecto 	= proyecto
# 		super nombre, edad, genero
# 		EMP << {nombre: @nombre, edad: @edad, genero: @genero, horario: @horario, sueldo: @sueldo, cargo: @cargo, proyecto: @proyecto}
# 	end

# 	def cargo
# 		@cargo
# 	end

# 	def eliminar
# 		EMP
# 	end

# 	def empleados
# 			end


# end

# class Cliente < Persona

# 	attr_accessor :credit_card, :cuenta_bancaria, :proyectos

# 	def initialize credit_card, cuenta_bancaria, proyectos
# 		@credit_card		= credit_card
# 		@cuenta_bancaria	= cuenta_bancaria
# 		@proyectos			= proyectos
# 	end
# end


# class Gerente < Persona
# 	#documentos, area
# end

# class Desarrollador < Empleado
# 	#lenguajes, logros
# 	attr_accessor :lenguajes, :logros

# 	def initialize lenguajes, logros
# 		@lenguajes	= lenguajes
# 		@logros		= logros
# 	end

# 	def cargo
# 		"Full stack ninja #{super} y su sueldo es:#{@sueldo}"	
# 	end
# end

# com = Compania.new 100, 2500, 5, "EfectoVirtual"
# puts com.mostrar


# Empleado.new 'Pipes', '28', 'Masculina', '7:30 - 6:30', '$2.500.000', 'Producción', 'Contegral'
# Empleado.new 'Mony', '30', 'Femenina', '8:30 - 5:30', '$4.500.000', 'Chef', 'Colegiatura'
# Empleado.new 'Alberto', '31', 'Masculino', '7:00 - 5:00', '$8.500.000', 'Dev Ruby', 'EVs'

# puts Empleado::EMP

# alberto = Desarrollador.new 'ruby','Airbnb'
# alberto.cargo = "Desarrollador Web"
# alberto.sueldo = "$7.500.00"
# puts alberto.cargo




=begin
Una compañia puede:	
					Contratar empleado
					Despedir empleados
					Hacer convenios con clientes
=end



# class Figura
# 	def perimetro		
# 	end

# 	def lados
# 	end

# 	def area
# 	end
# end

# class Circulo < Figura
# 	attr_accessor :radio

# 	def initialize radio
# 		@radio = radio
# 	end

# 	def perimetro
# 		Mat::PI * 2 * @radio
# 	end

# 	def lados
# 		1
# 	end

# 	def area
# 		(Math::PI * (@radio **2))
# 	end

# end

# class Triangulo < Figura
# 	def initialize base,lado1,lado2, altura
# 		@base = base
# 		@lado2 = lado1
# 		@lado2 = lado2
# 		@altura = altura
# 	end

# 	def perimetro
# 		@base + @lado2 + @lado2
# 	end

# 	def area
# 		lado1 * lado2
# 	end
# end



# class Rectangulo < Figura

# 	attr_accessor :lado1, :lado2

# 	def initialize lado1,lado2
# 		@lado2 = lado1
# 		@lado2 = lado2
# 	end

# 	def perimetro
# 		2 * @lado1 + 2 * @lado2
# 	end

# 	def area
# 		lado1 * lado2
# 	end
# end



# class CuadradoEspecial < Rectangulo
# 	def perimetro
# 		puts "Estas llamando a clase especial"
# 		super
# 	end
# end


# especial = CuadradoEspecial.new
# especial.perimetro













