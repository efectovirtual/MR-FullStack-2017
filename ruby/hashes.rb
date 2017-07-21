diccionario = { one: "Uno", two: "Dos", three: "Tres"}

diccionario.each do |key, value|
    puts "#{key}: #{value}"
end

puts

diccionario.keys.each do |key|
    puts key
end

puts

diccionario.values.each do |value|
    puts value
end