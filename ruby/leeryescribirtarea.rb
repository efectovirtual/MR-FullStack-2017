

def load_tasks archivo

	arr = []
	hash1 = []

	if File.exists?(archivo)
		f = File.read(archivo)
		
		f.each_line do |l|
			arr << l.chomp.split(",")
		end

		arr.length.times do |i|
			arr[i][2] = true if arr[i][2] == "true"
			arr[i][2] = false if arr[i][2] == "false"
			hash1 << {id: arr[i][0].to_i , name: arr[i][1] , done: arr[i][2]}
		end
	end
	hash1
end


def save_tasks archivo, hashes

	info = ""
	
	hashes.each_with_index do |contenido,i|
		info << contenido.values.join(',')
		info << "\n" if i < hashes.length-1
	end

	f = File.new(archivo,"w")
	f.puts info
	f.close

end


hashp = [
	{id: 1, name: "Alberto Rodriguez", done: true},
	{id: 2, name: "Monica Sampedro", done: false},
	{id: 3, name: "Esteban Rodriguez", done: false},
	{id: 4, name: "Olga Diaz", done: true}
]


save_tasks "archivotarea.txt", hashp
load_tasks "archivotarea.txt"






# r - Solo lectura. El archivo debe existir.
# w - Crea un archivo para escritura. Sobreescribe el archivo si ya existe.
# a - Abre el archivo para agregarle más contenido. Crea el archivo si no existe.
# r+ - Abre el archivo en modo lectura y escritura. El archivo debe existir.
# w+ - Crea un archivo en modo lectura y escritura.
# a+ - Abre un archivo en modo lectura y escritura (agregar contenido). Si el archivo no existe lo crea





# Mejor Solución 
def load_tasks(file)
  return [] unless File.file?(file)

  tasks = []
  File.foreach(file) do |line|
    id, name, done = line.chomp.split(',')
    tasks.push({ id: id.to_i, name: name, done: done == "true" })
  end
  tasks # muy importante retornar las tareas
end

def save_tasks(file, tasks)
  File.open(file, 'w') do |f|
    tasks.each { |t| f.puts "#{t[:id]},#{t[:name]},#{t[:done]}" }
  end
end


# Otras Soluciones

def load_tasks(file_name)
	require 'csv'
	array_var = Array.new

	begin
		CSV.foreach(file_name, col_sep: ',', row_sep: :auto, headers: false) do |row|
		hash_var = Hash.new
		hash_var[:id] = row[0].to_i
		hash_var[:name] = row[1]
		hash_var[:done] = row[2] == "true" ? true : false
		array_var << hash_var
	end
		array_var
		rescue
		Array.new
	end
end
