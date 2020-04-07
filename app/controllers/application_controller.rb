# frozen_string_literal: true

# Base controller for the application
class ApplicationController < Sinatra::Base
  configure do
    set :public_dir, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
end
