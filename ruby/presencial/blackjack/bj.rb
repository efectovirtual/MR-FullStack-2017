# BlackJack  - Juego

=begin
	1. repartir las castas
	2. preguntar al usuario si desea carta o planta
		si Pide carta
			si se pasa ir al punto cuarto
			sino volver al punto 2
		Si se planta
			ir al punto 3
	3. Jugar la mano del repartidor, determinar el valor que tiene el repartidor
		Si es < 17, entregarse otra carta.
			Si se pasa volver al punto 4
			sino volver al punto 3
		Sino
			ir al punto 4
	4. determinar el ganador
		Si el usuario se pasó, gana el repartidor
		Si el repartidor se paso, gana el usuario
		Si el repartidor tiene más que el usuario, gana el repartidor 
		De lo contratario, gana el usuario
	5. Volver al punto 1, nuevo juego


	Baraja = 52 cartas
=end

class Card

	attr_reader :suit, :value

	def initialize suit, value
		@suit = suit
		@value = value
	end

	def value
		return 10 if ["J","K","Q"].include?(@value) #si el valor es J Q K, si valor es 10
		return 11 if @value == "A"
		return @value
	end


	def to_s
		"#{@value} - #{@suit}"
	end
end



class Deck
	attr_reader :cards

	def initialize
		@cards = []
		build_cards		
	end

	def take!
		@cards.shift #obtener el primer elemento de un arreglo
	end

	private
		def build_cards
			# clubs = treboles, diamonts = diamantes, spades = picas, hearts = corazones
			[:clubs, :diamonts, :spades, :hearts].each do |suit| 
				
				(2..10).each do |number|
					@cards << Card.new(suit, number)
				end

				["J","K","Q","A"].each do |face|
					@cards << Card.new(suit, face)
				end
			end
			@cards.shuffle! #Aletoriamente reorganizar los elementos

		end
end


class Hand 
	attr_reader :cards

	def initialize deck
		@deck = deck
		@cards = []		
	end

	def hit!
		@cards << @deck.take!
	end

	def value
		val = 0

		@cards.each do |card|
			val += card.value
		end
		val
	end

	def to_s
		str = ""
		@cards.each do |card|
			str += "#{card}      "
		end
		str.strip #eliminar los espacio en blanco a izquierda y derecha
	end
end


deck = Deck.new
dealer = Hand.new(deck)
player = Hand.new(deck)

player.hit!
player.hit!
dealer.hit!

puts "Repartidor: #{dealer}"
puts "juegador:   #{player}"


# deck = Deck.new
# hand = Hand.new(deck)


# puts "Labaraja tiene #{deck.cards.length} cartas"
# puts "La mano tiene #{hand.cards.length} cartas"


# hand.hit!

# puts "Labaraja tiene #{deck.cards.length} cartas"
# puts "La mano tiene #{hand.cards.length} cartas"





















