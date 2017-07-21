def is_plate?(str)

	expt = /[A-Z]/
	expn = /[0-9]/

	text = str[0...2]
	num = str[3...5]

	textf = expt.match(text)
	numf = expn.match(num)
	
	if str.length == 6 && textf && numf
		puts true
	else
		puts false
	end
end

is_plate?("") 
is_plate?("MVV387")
is_plate?("mvv387")


# Mejor Solución
def is_plate?(string)
  string =~ /^[A-Z]{3}[0-9]{3}$/
end


# Otra Solución
def is_plate? string
	if string.match(/[A-Z]{3}\d{3}/)
		true
	else
		false
	end
end


# Dividamos la expresión regular que usamos para solucionar el reto (^[A-Z]{3}[0-9]{3}$) en varias partes para entender cómo funciona:

#     El caracter ^ indica el comienzo de la cadena. Eso evita que el método identifique holaMVV043 como una placa válida (aunque esto no lo tenía en cuenta el evaluador).
#     [A-Z]{3} indica que deben seguir 3 letras mayúsculas.
#     [0-9]{3} o \d{3} indica que deben seguir 3 dígitos.
#     El caracter $ indica el final de la cadena. Eso evita que el método identifique MVV043hola como una placa válida (aunque esto no lo tenía en cuenta el evaluador).
