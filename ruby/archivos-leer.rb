def read(nombref)

	if File.exists?(nombref)	
		f = File.read(nombref)	
		return f
	end
end

read("test.txt")



# Mejor solución
def read(file)
  File.read(file) if File.file?(file)
  # IO.read(file) también funciona
end

# Otra solución
def read(name_file)
    File.file?(name_file) ? IO.read(name_file) : nil 
end