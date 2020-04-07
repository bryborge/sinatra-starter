# frozen_string_literal: true

# Users controller
class UsersController < ApplicationController
  get '/sign-in' do
    erb :'/users/sign_in'
  end
end
