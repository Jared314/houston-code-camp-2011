require 'sinatra'
require 'haml'

set :haml, :format => :html5
set :views, File.dirname(__FILE__) + '/www/views'
set :public, File.dirname(__FILE__) + '/www/public'

get '/' do
	#return "Hello World!"
	haml :index
end

get '/speakers' do
  @title = "Speakers"
  haml :speakers
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
