require 'sinatra'


get '/login' do
	erb :login
end



post '/login' do

	# usuario = params[:usuario]
	# pass = params[:password]
	
	usuario = params.fetch('usuario','').strip
	pass = params.fetch('pass','').strip


	if usuario.empty? || pass.empty?
		@error = [{mensaje: "Email vacio"}]
		return error(400, erb(:login))
	end
		
	unless usuario == "alberto@efectovirtual.com" && pass == "12345"
		@error = {mensaje: "Información inválida"}
		return error(401, erb(:login))
	end

	redirect "/account/#{params[:usuario]}"
	
end



get '/account' do
	erb :account
end



get '/account/:usuario' do
	@us = params[:usuario]
	erb :account
end








# get '/orders' do
# 	@busqueda_input = params[:search]

# 	@hashcustomer = [
# 		{id: "34343", nombre: "Alberto Rodriguez", correo: "alberto@evs.com"},
# 		{id: "23121", nombre: "Olga Diaz", correo: "olga@evs.com"},
# 		{id: "59922", nombre: "Monica Sampedro", correo: "monica@evs.co"},
# 		{id: "03043", nombre: "Laura Giraldo", correo: "lsam@evs.co"},
# 		{id: "93413", nombre: "Pipes Sampedro", correo: "pipes@ev.co"}
# 	]

# 	if !params[:search].empty?
# 		@busqueda = @hashcustomer.find do |content|
# 			content[:id] == @busqueda_input
# 		end
# 	else
# 		@busqueda = {id: "", nombre: "", correo: ""}
# 	end
		
# 	erb :formulario

# end








# require 'sinatra/json'

# get '/foo' do
# 	puts "AGENT = #{request.user_agent}"
# 	puts "URL = #{request.url}"
# 	puts "PORT = #{request.port}"
# 	puts "METHOD = #{request.request_method}"
# 	puts "IP = #{request.ip}"
# end

# get '/foo' do
# 	erb :index
# end











# get '/customer/:correo' do
# 	@correo = params[:correo]
	
# 	@hashcustomer = [
# 		{id: "34343", nombre: "Alberto Rodriguez", correo: "alberto@evs.com"},
# 		{id: "23121", nombre: "Olga Diaz", correo: "olga@evs.com"},
# 		{id: "59922", nombre: "Monica Sampedro", correo: "monica@evs.co"},
# 		{id: "03043", nombre: "Laura Giraldo", correo: "lsam@evs.co"},
# 		{id: "93413", nombre: "Pipes Sampedro", correo: "pipes@ev.co"}
# 	]

# 	@busqueda = @hashcustomer.find do |content|
# 		content[:correo] == @correo
# 	end

# 	erb :customer

# end


# get '/customer' do
	
# 	@hashcustomer = [
# 		{id: "34343", nombre: "Alberto Rodriguez", correo: "alberto@evs.com"},
# 		{id: "23121", nombre: "Olga Diaz", correo: "olga@evs.com"},
# 		{id: "59922", nombre: "Monica Sampedro", correo: "monica@evs.co"},
# 		{id: "03043", nombre: "Laura Giraldo", correo: "lsam@evs.co"},
# 		{id: "93413", nombre: "Pipes Sampedro", correo: "pipes@ev.co"}
# 	]

# 	@busqueda = ""

# 	erb :customer

# end

