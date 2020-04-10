# frozen_string_literal: true

ENV['SINATRA_ENV'] = 'test'

require_relative '../config/environment'
require 'capybara/rspec'
require 'capybara/dsl'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate SINATRA_ENV=test` to run migrations.'
end

ActiveRecord::Base.logger = nil

RSpec.configure do |config|
  FactoryBot.definition_file_paths = %w[./factories ./test/factories ./spec/factories]
  FactoryBot.find_definitions

  config.filter_run_when_matching :focus
  config.include Capybara::DSL
  config.include Rack::Test::Methods
  config.include Shoulda::Matchers::ActiveModel
  config.include Shoulda::Matchers::ActiveRecord

  DatabaseCleaner.strategy = :truncation

  config.before do
    DatabaseCleaner.clean
  end

  config.after do
    DatabaseCleaner.clean
  end

  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app
