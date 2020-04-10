# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Users', type: :controller do
  before { get '/sign-in' }

  it 'returns status code 200' do
    expect(last_response.status).to eq(200)
  end
end
