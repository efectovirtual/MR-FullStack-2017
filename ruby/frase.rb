def phrase(arr)
	
	t = arr.join(", ")
	nespacio = t.count " "
	ne = 0

	if nespacio >= 1
		t.each_char.with_index do |pa, i|
			if pa == " "
			 	ne += 1
			end

			if ne == nespacio
				t[i-1] = " "
				t[i] = "y "
				ne += 1
			end
		end
	end
	
	t
end


phrase(['uno', 'dos', 'tres']) # => "uno, dos y tres"
phrase(['uno', 'dos']) # => "uno y dos"
phrase(['uno']) # => "uno"
phrase(['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete']) # => "uno, dos y tres"
phrase([]) # => ""


# Mejor Solución
def phrase(arr)
  if arr.length == 0
    return ""
  elsif arr.length == 1
    return arr[0]
  else
    return "#{arr[0...-1].join(', ')} y #{arr[-1]}"
  end
end



# otra Solución
def phrase(array)
array.join(",") if array.length == 0
array[0] if array.length == 1
array[0..-2].join(', ') + " y " + array[-1] if array.length > 1
end