require 'rails_helper'

RSpec.describe 'create a user endpoint' do
  it 'creates a user' do
    VCR.use_cassette("Business_request") do
      get "/api/v1/munchies?location=denver,co&food=chinese"

      expect(response).to be_successful
      results = JSON.parse(response.body, symbolize_names: true)
      binding.pry
      expect(results).to be_a(Hash)
      expect(results[:data][:id]).to eq("null")
      expect(results[:data][:type]).to eq("munchie")

    end
  end
end
