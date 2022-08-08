class Api::V1::BusinessController < ApplicationController
  def index
    coordinates = MapQuestFacade.find_coordinates(params[:location])
    weather = ForecastFacade.find_forecast(coordinates)
    business = BusinessFacade.find_business(params[:location], params[:food])
    render json: BusinessSerializer.serialize(weather,business),  status: :ok
  end
end
