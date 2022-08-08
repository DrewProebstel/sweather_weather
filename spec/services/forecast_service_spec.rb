RSpec.describe ForecastService do
  it 'returns data on geocode' do
    VCR.use_cassette("forcast_service") do
    	data = ForecastService.get_forecast(-20, 40)

      expect(data).to have_key(:current)
      expect(data).to have_key(:hourly)
      expect(data).to have_key(:daily)
    end
  end
end
