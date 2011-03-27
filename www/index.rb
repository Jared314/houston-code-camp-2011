require 'sinatra'
require 'haml'

set :haml, :format => :html5

get '/' do
	return "Hello World!"
end

get '/location' do
	@title = "Location"
	haml :location
end

get '/schedule' do
	@title = "Schedule"
	haml :schedule
end

get '/committee' do
	@title = "Committee"
	haml :committee
end

get '/contact' do
	@title = "Contact"
	haml :contact
end
