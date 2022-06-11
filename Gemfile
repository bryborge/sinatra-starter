# frozen_string_literal: true

source 'https://rubygems.org'

gem 'activerecord'
gem 'pg'
gem 'puma'
gem 'rake'
gem 'require_all'
gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-activerecord'
gem 'sinatra-contrib'


group :development, :test do
  gem 'capybara'
  gem 'database_cleaner-active_record'
  gem 'factory_bot'
  gem 'faker'
  gem 'fuubar' # Insta-failing progress bar for rspec.
  gem 'pry'
  gem 'rspec'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
end

group :test do
  gem 'simplecov', require: false
end
