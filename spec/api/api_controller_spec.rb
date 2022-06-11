# frozen_string_literal: true

require_relative '../spec_helper'

describe ApiController, type: :request do
  it 'responds with an http success code' do
    get '/'
    expect(last_response.status).to eq(200)
  end
end
