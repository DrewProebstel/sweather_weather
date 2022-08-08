class MapQuestFacade
  def self.find_coordinates(location)
  	data = MapQuestService.get_coordinates(location)
    data[:results][0][:locations][0][:latLng]
  end
end
