require 'sinatra'
require 'haml'

set :haml, :format => :html5

get '/' do
	return "Hello World!"
end

get '/schedule' do
	haml :schedule
end
