require 'rails_helper'

RSpec.describe MapQuestFacade do
  it 'returns a longitude and latitude when given a city' do
      VCR.use_cassette("map_quest_facade") do
    	results = MapQuestFacade.find_coordinates("boston,ma")

    	expect(results).to be_a(Hash)
      expect(results[:lat]).to eq(42.358894)
      expect(results[:lng]).to eq(-71.056742)
    end
  end
end
