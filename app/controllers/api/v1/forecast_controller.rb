class Api::V1::ForecastController < ApplicationController
  def index
    coordinates = MapQuestFacade.find_coordinates(params[:location])
    binding.pry
  end
end
