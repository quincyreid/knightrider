source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '4.0.0'

gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer'
gem 'jquery-rails'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'unicorn'
gem 'jbuilder', '~> 1.2'
gem 'dalli'
gem 'sass-rails', '~> 4.0.0'
gem "compass-rails", "~> 2.0.alpha.0"
gem 'breakpoint'
gem 'coffee-rails', '~> 4.0.0'
gem 'devise'
gem 'omniauth-github'
gem 'settingslogic'
gem 'simple_form'
gem 'paperclip', '~> 3.0'
gem 'rails_autolink'
gem 'friendly_id', '~> 5.0.0'
gem "aws-sdk", "~> 1.29.0"

group :development do
  gem 'growl'
  gem 'guard'
  gem 'guard-rspec'
  gem 'terminal-notifier-guard'
  gem 'foreman'
end

group :test do
  gem 'rake'
  gem "capybara", "~> 2.2.0"
  gem 'cucumber-rails', '~> 1.4', require: false
  gem 'database_cleaner'
end

group :development, :test do
  gem 'fuubar' #rspec formatter
  gem 'rspec-rails', '~> 2.10'
  gem 'factory_girl_rails'
end



# Heroku
group :production do
  gem 'rails_12factor'
  gem 'memcachier'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end