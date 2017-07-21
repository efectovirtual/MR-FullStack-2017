def secret_code(cad)
	h = {one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9}
	sc = cad.split(" ")

	sumanum = 0

	sc.each.with_index do |numc, i|
		h.each do |nunh, numero|
			if numc.to_s == nunh.to_s
				sumanum += numero.to_i
			end
		end
	end
	sumanum
end


secret_code("one on one") #=> 2
secret_code("five monkeys in three farms") #=> 8
secret_code("") #=> 0
secret_code("fivethreeone") #=> 0





# Otra solución
def secret_code(phrase)
  numbers = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

  value = 0
  phrase.split(/\W/).each do |word|
    value += numbers[word] if numbers[word]
  end

  value
end


# Mejor Solución
def secret_code(phrase)
	msj.split(' ').each do |word|
	result += symbol[:"#{word}"] ? symbol[:"#{word}"]: 0
end