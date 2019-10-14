source 'http://rubygems.org'

gem 'rails', '3.2.22.5'

group :development, :test do
  gem 'sqlite3'
end

gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'

gem 'haml'
gem 'dynamic_form'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'redcarpet'

# Heroku gems
group :production do
  gem 'heroku'
  gem 'pg'
  #gem 'therubyracer-heroku', '0.8.1.pre3'
end

group :test do
  gem 'turn', :require => false
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'rake'
  gem "capybara", ">= 1.1.2"
end
