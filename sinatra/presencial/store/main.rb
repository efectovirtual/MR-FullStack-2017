require 'sinatra'

enable :session

products =[
		{name: 'Macbook pro', price: '2500', currency: 'USD'},
		{name: 'iMac', price: '3500', currency: 'USD'},
		{name: 'Dell 7500', price: '1850', currency: 'USD'},
		{name: 'iPhone 8 64GB', price: '2990', currency: 'USD'}
	]

def cookies_page
	@visited = request.cookies.fetch('visited',0).to_i
	response.set_cookie('visited', @visited +1)
end


get '/' do
	cookies_page
	@products = products
	erb :index
end


get '/products/new' do
	cookies_page
	erb :products_new
end


post '/products/new' do
	cookies_page
	name = params[:name]
	price = params[:price]
	currency = params[:currency]

	# name = params[:products][:name]
	# price = params[:products][:price]
	# currency = params[:products][:currency]

	products << {name: name, price: price, currency: currency}

	redirect "/"
	erb :products_new
end



delete '/products/:name' do

	product = products.find do |product| 
		product[:name] == params[:name]
	end

	return redirect '/' unless product

	products.delete product
	redirect '/'
end


get '/visited' do
	cookies_page
	erb :visited
end


get '/login' do

	@login_user = request.cookies['login_user_cookie']
	erb :login
end


post '/login' do

	@correo = params[:email]
	@pass = params[:pass]

	if @correo == "alberto@ev.com" && @pass == "12345"
		response.set_cookie('login_user_cookie', @correo) #Crear Cookies - login_user_cookie = nombre de cookies, @correo = Valor
		@login_user = request.cookies['login_user_cookie'] # Leer Cookies - 
	end


	erb :login
end


get '/product/:name' do
	name = params[:name]
	@product = products.find { |product| product[:name] == name}
	halt 404, 'product not found' unless @product
	erb :product
end
 
post '/cart' do
	product = params[:product]
	cart = session[:cart]
	puts "CART = #{cart}"
	
	if cart
		cart << product
	else
		cart = [product]
		session[:cart] == cart
	end
	redirect '/'
end

#eliminar cookies
# http://fernando-gaitan.com.ar/ruby-on-rails-parte-10-cookies-y-sesiones/



















