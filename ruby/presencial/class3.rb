

libreta =[
	["email@domain.co","Dirección 001","Teléfono 001"],
	["info@domain.co","Dirección 002","Teléfono 002"],
	["doc@domain.co","Dirección 003","Teléfono 003"]
]

libreta_hash = []

libreta.length.times do |i|
	correo = libreta[i][0]
	direccion = libreta[i][1]
	telefono = libreta[i][2]	
	libreta_hash << {correo: correo, direccion: direccion, telefono: telefono} 
end

puts libreta_hash


libreta_hash = [ {correo: correo, direccion: direccion, telefono: telefono} ]
libreta_hash << {correo: correo, direccion: direccion, telefono: telefono} 


# str1 = <<001
# esto
# es un string
# de 
# varias lineas
# 001

# str2 = <<002
# nombre,apellido,edad,cc
# alberto,rodriguez,31,119532519
# monica,sampedro,00,2324343
# laura,hola,21,9343434
# 002

# p str2.split(/\n|\,/)


states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'Califorinia' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacsonville'
}

states.each do |state,ab|

	puts cities.fetch(ab,"No existe")

end








# clase = {nombre: "Alberto1", apellido: "Rodriguez1", direccion: "Direccion1" }


# clase.each do |k,i|
# 	puts "llave:#{k} Valor:#{i}"
# end

# clase.delete(:nombre)

# clase[:email] = "info@evs.co";

# # clase.fetch(:peso,'info@asasa.com') // fetch para cuando el valor es vacio y quiro predeterminar uno
# # clase.values

# puts clase




# clase = {}

# 	clase =[
# 		{ nombre: "Alberto1", apellido: "Rodriguez1", direccion: "Direccion1" },
# 		{ nombre: "Alberto2", apellido: "Rodriguez2", direccion: "Direccion2" },
# 		{ nombre: "Alberto3", apellido: "Rodriguez3", direccion: "Direccion3" },
# 		{ nombre: "Alberto4", apellido: "Rodriguez4", direccion: "Direccion4" },
# 		{ nombre: "Alberto5", apellido: "Rodriguez5", direccion: "Direccion5" }
# 	]


# clase.each do |k|
# 	puts "Nombre: #{k[:nombre]}, Apellido: #{k[:apellido]}, Dirección: #{k[:direccion]}"
# end


# clase.each_with_index do |k,i|
# 	# puts "Nombre: #{k[:nombre]}, Apellido: #{k[:apellido]}, Dirección: #{k[:direccion]}"
# 	puts clase[i][:nombre]
# 	puts clase[i][:apellido]
# 	puts clase[i][:direccion]
# end

# puts clase[0][:nombre]