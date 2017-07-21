def alive?(playerName, points)
	if playerName == "ikk" && points > 30
		valor = true

	elsif playerName == "gut" && points > 10
		valor = true
	else
		valor = false
	end

	valor
end

alive?("ikk", 50)
alive?("gut", 50)
alive?("ikk", 20)
alive?("gut", 5)
alive?("trek", 50)


# Otra buena solución, operador ternario
def alive?(playerName, points)
(playerName == "ikk" && points > 30) || (playerName == "gut" && points > 10) ? true : false
end