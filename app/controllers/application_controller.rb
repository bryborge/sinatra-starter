# frozen_string_literal: true

# Base controller for application.
class ApplicationController < Sinatra::Base
  configure do
    set :public_dir, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @name = params[:name]
    erb :index
  end
end
