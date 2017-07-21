
class Carta
	def initialize
	end
end



class Deck
	def initialize
		@mazo = []
		1.upto 4 |i|
			1.upto 13 |j|
				if 
					mazo << Carta.new('A',i)
				elsif
			end	
		end
	end


end



class Jugador
	def initialize
	end
end



class Juego
	def initialize
	end
end





as_cor = Carta.new
deck = Deck.new [as_cor, as_tre]
mano = deck.generar_mano
jugador = Jugador.new 'simon', mano
juego = Juego.new deck,[jugador]







#Carta
#deck
#jugador
#mano
#juego






# class Orden

# 	attr_accessor :lista

# 	def initialize
# 		@lista = []
# 	end

# 	def agregar producto
# 		@lista  << producto
# 	end

# 	def eliminar producto
# 		@lista.delete(producto)
# 	end

# 	def ver
# 		@lista.each	do |product|
# 			puts product
# 		end

# 	end 

# 	def buscar producto
# 		@lista.find { |p| p == producto}
# 	end

# end

# order1 = Orden.new

# order1.agregar 'leche'
# order1.agregar 'pan'
# order1.agregar 'miel'

# order1.eliminar 'pan'

# order1.ver

# puts order1.buscar ''