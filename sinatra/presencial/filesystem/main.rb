require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions


get '/' do
	erb :index
end



usuarios_persmisos = [
	{correo: "alberto@efectovirtual.com", permiso: "descargar"},
	{correo: "alberto@ev.com", permiso: "leer"}
]

get '/login' do
	redirect '/'
end

# post '/login' do
post '/login' do

	int = 1

	correo = params.fetch('correo','').strip
	contrasena = params.fetch('contrasena','').strip


	if correo.empty? || contrasena.empty?
		@error = [{mensaje: "Email vacio"}]
		return error(400, erb(:index))
	end

	@permiso = usuarios_persmisos.find do |usuarios|
		usuarios[:correo] == @session
	end

	unless @permiso[:correo] == correo
		session[:error_login] = {intento: int+=1}
	end
		
	# unless correo == "alberto@efectovirtual.com" && contrasena == "12345"
	# 	@error = {mensaje: "Información inválida"}
	# 	return error(401, erb(:index))
	# end

	# session[:current_customer] = {email: 'alberto@efectovirtual.com'}
	session[:current_customer] = {email: correo}

	redirect "/files"

end



get '/files' do
	puts "SESSION #{session[:current_customer]}"

	unless session[:current_customer]
		return redirect '/'
	end
	
	entries = Dir.entries '.'
	@directories = entries.select { |entry| File.directory? entry}
	@files = entries.select { |entry| File.file? entry }

	@session = session[:current_customer][:email]

	@permiso = usuarios_persmisos.find do |usuarios|
		usuarios[:correo] == @session
	end


	erb :files
end




get '/files/:name' do
		# File.read params[:name]
	send_file params[:name], disposition: :inline
end



get '/download/:name' do
	send_file params[:name], disposition: :attachment
end



get '/cuenta' do

	if session[:current_customer][:email]
		@session = session[:current_customer][:email]
	else
		@session = "Anonimo"
	end
		
	erb :cuenta
end


get '/salir' do
	session.delete(:current_customer)
	redirect '/'
end
















