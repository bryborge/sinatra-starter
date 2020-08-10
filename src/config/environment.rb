# frozen_string_literal: true

require 'dotenv/load'
require 'bundler/setup'

APP_ENV = ENV['SINATRA_ENV'] || 'development'

Bundler.require(:default, APP_ENV.to_sym)

require_all 'app'
