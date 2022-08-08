require 'rails_helper'

RSpec.describe 'find a buisness request' do
  it 'returns the required json' do
    VCR.use_cassette("Business_request") do
      get "/api/v1/munchies?location=denver,co&food=chinese"

      expect(response).to be_successful
      results = JSON.parse(response.body, symbolize_names: true)

      expect(results).to be_a(Hash)
      expect(results[:data][:id]).to eq("null")
      expect(results[:data][:type]).to eq("munchie")
      expect(results[:data][:attributes][:destination_city]).to eq("Denver, CO")
      expect(results[:data][:attributes][:forecast][:summary]).to eq("clear sky")
      expect(results[:data][:attributes][:forecast][:temperature]).to eq(76.24)
      expect(results[:data][:attributes][:restaurant][:name]).to eq("Fortune Wok to Table")
      expect(results[:data][:attributes][:restaurant][:address]).to eq("2817 E 3rd Ave, Denver, CO 80206")
    end
  end
end
