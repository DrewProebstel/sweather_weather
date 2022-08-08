class WeatherFacade
  def self.find_weather(coordinates)
  	data = WeatherService.get_weather(coordinates[:lat],coordinates[:lng])
  end
end
