class Api::V1::ForecastController < ApplicationController
  def index
    coordinates = MapQuestFacade.find_coordinates(params[:location])
    weather = ForecastFacade.find_forecast(coordinates)
    render json: ForecastSerializer.serialize(weather),  status: :ok
  end
end
