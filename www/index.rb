require 'sinatra'
require 'haml'

set :haml, :format => :html5, :layout => "layout/default"

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
