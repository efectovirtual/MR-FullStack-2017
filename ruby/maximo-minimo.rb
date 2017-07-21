def maximo(*max)
	maf = max.length-1
	for i in 0..maf-1
		if max[i] > max[i+1]
			max[i+1] = max[i]
		end
	end
	max[maf]
end

def minimo(*min)
	maf = min.length-1
	for i in 0..maf-1
		if min[i] < min[i+1]
			min[i+1] = min[i]
		end
	end
	min[maf]
end


maximo(5, 10, 20, 50, 32)
minimo(3, 44, 2, 8)




# Mejor Solución

def maximo(*valores)
  valores.max
end

def minimo(*valores)
  valores.min
end