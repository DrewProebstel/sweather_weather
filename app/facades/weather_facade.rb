class WeatherFacade
  def self.find_weather(coordinates)
  	data = WeatherService.get_weather(coordinates[:lat],coordinates[:lng])
    current_weather = CurrentWeather.new(data[:current])
    daily_weather = data[:daily][0..4].map do |daily|
      DailyWeather.new(daily)
    end
    hourly_weather = data[:hourly][0..7].map do |hourly|
      HourlyWeather.new(hourly)
    end
    {current_weather: current_weather, daily_weather: daily_weather, hourly_weather: hourly_weather}
  end
end
