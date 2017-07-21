def multiplier(vector,num)
	vector.each_with_index do |val,i|
		vector[i] = val * num 
	end
end

multiplier([1, 2, 3], 3) 
multiplier([1, 2, 3], 10)

# Mejor forma
def multiplier(arreglo, num)
  arreglo.map { |i| i * num }
end

