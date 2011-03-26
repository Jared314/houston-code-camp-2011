require 'sinatra'
require 'haml'

set :haml, :format => :html5, :layout => "layout/default"

get '/' do
	return "Hello World!"
end

get '/location' do
	haml :location, :locals => { :title => "Location" }
end

get '/schedule' do
	haml :schedule
end
