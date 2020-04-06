# frozen_string_literal: true

require 'bundler/setup'

# ENV['SINATRA_ENV'] ||= 'development'
APP_ENV = ENV['RACK_ENV'] || 'development'

Bundler.require(:default, APP_ENV.to_sym)

require_all 'app'
