# frozen_string_literal: true

#
# Application Controller
#
# This is the base controller for the application.
#
class ApplicationController < Sinatra::Base
  configure do
    set :public_dir, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @name = params[:name]
    erb :index
  end

  # More routes ...
end
