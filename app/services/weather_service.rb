class WeatherService
  def self.get_weather(lat, lon)
  	  response = Faraday.get("https://api.openweathermap.org/data/2.5/onecall?units=imperial") do |faraday|
  	  				faraday.params['appid'] = ENV.fetch('weather_api_key', nil)
  	  				faraday.params['lat'] = lat
  	  				faraday.params['lon'] = lon
  	  end
  	  JSON.parse(response.body, symbolize_names: true)
  end
end
