class Api::V1::BusinessController < ApplicationController
  def index
    coordinates = MapQuestFacade.find_coordinates(params[:location])
    weather = ForecastFacade.find_forecast(coordinates)
    resteraunt = BusinessController.find_business(params[:location], params[:food])
  end
end
