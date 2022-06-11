# frozen_string_literal: true

require 'sinatra/json'

# Base controller for API.
class ApiController < Sinatra::Base
  get '/' do
    json 'Hello World'
  end
end
