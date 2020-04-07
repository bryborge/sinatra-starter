# frozen_string_literal: true

require_relative './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to run migrations.'
end

use Rack::MethodOverride
run ApplicationController
