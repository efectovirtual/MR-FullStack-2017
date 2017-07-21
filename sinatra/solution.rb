
require 'sinatra'


get '/' do
	if request.env["HTTP_PERMISO"] == "soy-un-token-secreto"
		"Si lo logramos!"
	else
		"Sin Permiso"
	end
end


# Otra solucion
# get '/' do
#   if env["HTTP_PERMISO"] == "soy-un-token-secreto"
#     "Si lo logramos!"
#   else
#     "Sin Permiso"
#   end
# end









# get '/' do
#   request.user_agent
#   # request.env['HTTP_USER_AGENT']
# end












# get '/' do

# 	erb :abuela
# end

# post '/respuesta' do

# 	res = params[:dialgo]

# 	if res =~ /[A-Z]/
# 		@respuesta = "Ahhh si, manzanas!"
# 	else
# 		@respuesta = "Habla más duro mijito"
# 	end

# 	erb :abuelarespuesta
# end









# require 'sinatra'

# suma = 0

# get '/' do
# 	@suma_total = suma
# 	erb :sumar
# end

# post '/' do
# 	suma += 1
# 	@suma_total = suma
# 	erb :sumar
# end










# # Pares e Impares
# get '/' do

# 	@parimpar = []
# 	50.times do |i|
# 		i += 1
# 		if (i.to_i%2) == 0
# 			@parimpar << "#{i} Soy Par!"
# 		else
# 			@parimpar << "#{i} Soy Impar!"
# 		end
# 	end

#   erb :parimpar
# end








# require 'sinatra'

# get '/' do
# 	'HcUy6Re2LLBRtj'
# end
