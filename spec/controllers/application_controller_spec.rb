# frozen_string_literal: true

require_relative '../spec_helper'

describe ApplicationController, type: :controller do
  it 'responds with a welcome message' do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include('Hello, World!')
  end
end
