require 'sinatra'
require 'haml'

set :haml, :format => :html5
set :views, File.dirname(__FILE__) + '/www/views'
set :public, File.dirname(__FILE__) + '/www/public'

before do
  if request.url =~ /^http:\/\/www\./
    redirect request.url.gsub(/^http:\/\/www\./, 'http://'), 301
  end
end

get '/' do
	#return "Hello World!"
	haml :index
end

get '/speakers' do
  @title = "Speakers"
  haml :speakers
end

get '/sponsors' do
  @title = "Sponsors"
  haml :sponsors
end

get '/registration' do
  @title = "Registration"
  haml :registration
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
