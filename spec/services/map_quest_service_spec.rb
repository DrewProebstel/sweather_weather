RSpec.describe MapQuestService do
  it 'returns data on geocode' do
    VCR.use_cassette("map_quest_service") do
    	data = MapQuestService.get_coordinates("boston,MA")

      expect(data).to be_a(Hash)
    	expect(data[:results][0][:locations][0][:latLng]).to be_a(Hash)
    	expect(data[:results][0][:locations][0][:latLng][:lat]).to be_a(Float)
    	expect(data[:results][0][:locations][0][:latLng][:lng]).to be_a(Float)
    end
  end
end
