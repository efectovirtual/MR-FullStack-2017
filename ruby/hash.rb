def create_hash(temperature, altitude, pressure)
	hash = {temperature: temperature, altitude: altitude, pressure: pressure}
	return hash
end

create_hash(23, 4500, 234)
create_hash(10, 12000, 345)


# Otra solución
def create_hash(temperature, altitude, pressure)
  { temperature: temperature, altitude: altitude, pressure: pressure }
end