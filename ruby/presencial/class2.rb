
juego = 
[
	["Alberto",10],
	["David",5],
	["Laura",11],
	["Monica",6],
	["Pipes",8]
]


puntage = juego.map do |jugador|
	jugador[1]
end

puts puntage.max





# juego = 
# [
# 	["Alberto",10],
# 	["David",5],
# 	["Laura",11],
# 	["Monica",6],
# 	["Pipes",8]
# ]

# jugador = []


# juego.map do |jugador|
# 	jugador[1]
# end

# puts jugador





# juego = []

# juego << ["Alberto",10]
# juego << ["David",5]
# juego << ["Laura",11]
# juego << ["Monica",6]
# juego << ["Pipes",8]


# juego = 
# [
# 	["Alberto",10],
# 	["David",5],
# 	["Laura",11],
# 	["Monica",6],
# 	["Pipes",8]
# ]

# punt = []

# juego.each do |jugador|
# 	# punt[i] = pa[i][1]
# 	punt << jugador[1]
# end

# puts punt







#Iterar un arregle

# v = ('a'..'z').to_a


# v.each_with_index do |pa,i|

# 	# if (i%2) != 0
# 	# 	puts "Posición #{i} == #{pa}"
# 	# end

# 	puts "Posición #{i} == #{pa}" unless i.even?
	
# end

# ('a'..'z').to_a.each_with_index {|pa,i| puts "Posición #{i} = #{pa}" unless i.even?}


# v.each do |i|
# 	puts i if i == 'm'
# end

# v.find do |i|
# 	puts i if i == 'm'
# end

# ('a'..'z').to_a.find {|i| puts i if i=='m'}


# clase = ["Alberto", "David", "Esteban", "Monica", "Olga"]

# clase.each do |i|
# 	puts i
# end






# v = ('a'..'z').to_a

# t = v.length

# t.downto(t-3) do |i|
# 	v.delete_at(i)
# end

# # Otra forma con POP
# # 3.times do
# # 	v.pop
# # end

# puts v





# clase = ["Alberto", "David", "Esteban", "Monica", "Olga"]


# clase.shift #Elimina el primero
# clase.pop #Elimina el último

# clase << "Pipes" # agregar al último

# clase.insert(2,"Laura")

# clase.delete_at(2)





# clase = "make it real camp"
# puts clase[8..11]

# puts clase[1..4]


# puts clase[-1];

# puts clase.last;
# puts clase.first;




# 60.downto(20) do |i|
# 	puts i
# end

# 20.upto(60) do |i|
# 	puts i
# end




# 30.times do |i|
# 	puts i if i.even?
# end




# 30.times do |i|
# 	if (i.to_i%2) == 0
# 		puts i
# 	end

# end