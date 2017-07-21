
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


require 'sinatra'
require 'sinatra/reloader' if development?
require 'evs'
require 'securerandom'


users = [
	Evs::Models::User.new('info@evs.co', 'Alberto Rodriguez Diaz', 'admin'),
	Evs::Models::User.new('david@evs.co', 'David Diaz Giraldo', 'Frontend'),
	Evs::Models::User.new('olga@evs.co', 'Olga Rodriguez Diaz', 'Secretaria'),
	Evs::Models::User.new('monica@evs.co', 'Monica Sampedro Giraldo', 'Comunicadora'),
	Evs::Models::User.new('pipes@evs.co', 'Felipe Sampedro Giraldo', 'Ingeniero')
]

get '/' do
	erb :index
end

get '/generate_report' do
	content = Evs::Reporters::Users::Csv.generate users
	content_type 'application/csv'
	attachment 'user_report2.csv'
	content
end


get '/create_report' do
	file = Evs::Reporters::Users::Csv.report users
	send_file file.path,disposition: :attachment, type: 'application/csv'
end



get '/upload_file' do
	erb :upload_file
end



post '/upload_file' do
	temfile = params[:file][:tempfile]
	filename = params[:file][:filename]


	randon = SecureRandom.uuid
	nombre_nuevo = "albertorodriguez-#{randon}-#{filename}"


	upload_path = File.join '.', 'uploads', nombre_nuevo #File.join para que lo ponga bien en windows y linux

	File.open upload_path, 'wb' do |file| #'wb' archivo binario
		file.write temfile.read
	end
end




















