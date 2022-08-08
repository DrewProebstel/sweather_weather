class Api::V1::ForecastController < ApplicationController
  def index
    coordinates = MapQuestFacade.find_coordinates(params[:location])
    weather = WeatherFacade.find_weather(coordinates)
  end
end
