
# def defaults(hash)
# 	cont = 1
# 	h2 = {temperature: 1, altitude: 2, pressure: 3}

# 	hash.keys.each do |key|
# 			if key != h2.key(1) && cont == 1
# 				hash[key] = 10
			
# 			elsif key != h2.key(2) && cont == 2
# 				hash[key] = 12000
			
# 			elsif key != h2.key(3) && cont == 3
# 				hash[key] = 500
# 			end
# 	end
# 	return hash
# end


# defaults({ss: 5, altitu21de: 20, pressure: 100})



DEFAULT = {temperature: 10, altitude: 12000, pressure: 500}

def defaults (hash = {})
	rel = DEFAULT.merge(hash)
  return rel
end

defaults({temperatre: 30, altitude: 2200, pressure: 5200})
defaults({})



# .merge para combiar hashes


# otras formas

def defaults(hash)
  { temperature: 10, altitude: 12000, pressure: 500 }.merge(hash)
end

# Forma larga
def defaults(hash)
  if !hash.has_key?(:temperature)
    hash[:temperature] = 10
  end
  if !hash.has_key?(:altitude)
    hash[:altitude] = 12000
  end
  if !hash.has_key?(:pressure)
    hash[:pressure] = 500
  end

  hash # esto es importante para que retorne el hash modificado
end

# Forma dos
def defaults(hash)
  hash[:temperature] = 10 if !hash.has_key?(:temperature)
  hash[:altitude] = 12000 if !hash.has_key?(:altitude)
  hash[:pressure] = 500 if !hash.has_key?(:pressure)
  hash
end