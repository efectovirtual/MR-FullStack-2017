require 'sinatra'




# Pares e Impares
get '/' do
	
	51.times do |i|
		if (i%2)==0
			"#{i} Soy Par!"
		else
			"#{i} Soy Impar!"
		end
	end

	# erb :parimpar
end




# Saluda 3

# require 'sinatra'

# a = []

# get '/' do
# 	a = params[:nombre]
# 	if a
# 		"<h3>Hola #{a}</h1>"
# 	else
# 		"Hola desconocido!"
# 	end	

# 	erb :saludo3

# end


# post '/nuevo/objeto' do
# 	"Hola Tu nombre es: #{params[:nombre]}"
# end









# Saluda 2

# require 'sinatra'

# get '/' do
# 	"Hola desconocido!"
# end

# get '/:makers/' do
# 	"Hola desconocido!"
# end


# get '/:makers/:nombre' do
# 	"<h1>Hola #{params[:nombre].capitalize}!</h1>"
# end











# Saluda 1

# require 'sinatra'

# a = []

# get '/' do
# 	a = params[:nombre]
# 	if a
# 		"<h3>Hola #{a}</h1>"
# 	else
# 		"Hola desconocido!"
# 	end	
# end


