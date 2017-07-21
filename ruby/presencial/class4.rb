# # https://ruby-doc.org/core-2.3.3/File.html
# File.file?
# File.expand_path '~' #home
# File.directory?
# File.expand_path '../' # en la que estoy
# File.executable?
# File.executable_real?
# File.exist? # Directorio y Archivos
# File.exists?
# File.extname?


# # Posición relativa y absoluta


# new_file = File.new('name.txt','w')
# new_file.write "puts 'Hola Mundo'"
# new_file.close


# File.open('name.txt','w') do |file|
# file.write "puts 'chao mundo'"

# new_file.read.split("\n")

# new_f
# ile.each_line do |line|
# 	puts "LINE => #line{}"
# end

IO.read('doc.txt')



def creardoc(nombre,texto)
	f = File.new(nombre,"w")
	f.puts texto
	f.close
end


def leerdoc(nombre)
	if File.exists?(nombre)	
		f = File.read(nombre)	
		return f
	end
end

texto = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi at voluptatum asperiores vero id quaerat fugiat quibusdam ea tempore, magni consequuntur accusamus laboriosam fuga, ad deleniti deserunt earum animi! Blanditiis."

creardoc("rubydoc.txt",texto)
puts leerdoc("rubydoc.txt")




# def concact arr1, arr2

# 	arrf = []

# 	arr1.length.times do |i|
# 		arrf.push(arr1[i])
# 	end

# 	arr2.length.times do |i|
# 		arrf.push(arr2[i])
# 	end

# 	arrf

# end

# arrf << element


# a1 = [1,2,3,4,5,6,7,8,9,99]
# b1 = [0,8,6]

# puts concact(a1,b1)






# def promedio arr
# 	po = 0
# 	arr.each do |i|
# 		po += i.to_f
# 	end
# 	po/arr.length

# 	# values.reduce(:+) # suma todo los valores
# 	# values.inject { |sum, value| sum + value}  # suma todo los valores
# 	# 4.fdiv 5 = divición float 
# end

# a = [1,2,3,4,5,6,7,8,9,99]

# puts promedio(a)







# def hash hash,key,default="No existe"

# 	value = hash[key]
# 	value ? value : default

# end


# clase = { nombre: "Alberto1", apellido: "Rodriguez1", direccion: "Direccion1" }


# puts hash(clase,:apellido)