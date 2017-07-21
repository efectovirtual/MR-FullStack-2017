def write(nombref, texto)
	f = File.new(nombref,"w")
	f.puts texto
	f.close
end

write("test.txt", "Hola mundo")



# Solución Corta
# def write(file, content)
#   File.write(file, content)
# end

# otra Solución
# File.open('path/to/file', 'w') { |file| file.write("content") }