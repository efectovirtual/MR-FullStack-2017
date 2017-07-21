require 'sinatra'



get '/customer' do
	# puts params
	@nombre = params[:nombre]
	@correo = params[:correo]
	erb :customer
end


get '/busqueda/:correo' do
	# puts params
	@correo = params[:correo]
	
	@hashcustomer = [
		{id: "34343", nombre: "Alberto Rodriguez", correo: "alberto@evs.com"},
		{id: "23121", nombre: "Olga Diaz", correo: "olga@evs.com"},
		{id: "59922", nombre: "Monica Sampedro", correo: "monica@evs.co"},
		{id: "03043", nombre: "Laura Giraldo", correo: "lsam@evs.co"},
		{id: "93413", nombre: "Pipes Sampedro", correo: "pipes@ev.co"}
	]


	# @hashcustomer.each do |content|
	# 	if content[:correo] == @correo
	# 		@buscorreo = content
	# 	end
	# end


	@buscorreo = @hashcustomer.find do |content|
		content[:correo] == @correo
	end


	erb :busqueda

end



get '/customer/:nombre/:correo' do
	puts params
	@nombre = params[:nombre]
	@correo = params[:correo]
	
	@hashcustomer = [
		{id: "34343", nombre: "Alberto Rodriguez", correo: "alberto@evs.com"},
		{id: "23121", nombre: "Olga Diaz", correo: "olga@evs.com"},
		{id: "59922", nombre: "Monica Sampedro", correo: "monica@evs.co"},
		{id: "03043", nombre: "Laura Giraldo", correo: "lsam@evs.co"},
		{id: "93413", nombre: "Pipes Sampedro", correo: "pipes@ev.co"}
	]

	erb :customer

end


get '/' do
	@producto = 'Hola soy una variable'
	erb :index
end



# get	'/' do
# 	"Hello World"
# end

