source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'
gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.11'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'rack-cors', :require => 'rack/cors'

gem 'active_model_serializers'
gem 'dotenv-rails'
gem 'rest-client'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'omniauth-google'

group :development, :test do
  gem 'sqlite3'
end


group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


group :test do
  'minitest'
  'minitest-reporters'
end 

group :production do 
  gem 'pg'
end 


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
