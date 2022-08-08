class BusinessFacade
  def self.find_business(location,food)
  	data = BusinessService.get_business(location,food)
    {name: data[:businesses][0][:name], address: data[:businesses][0][:location][:display_address][0] + ", " + data[:businesses][0][:location][:display_address][1], city: data[:businesses][0][:location][:city] + ", " + data[:businesses][0][:location][:state] }
    # {name: data[:businesses][0][:name], address: data[:businesses][0][:location][:display_address], city: data[:businesses][0][:location][:city], state: data[:businesses][0][:location][:state] }
  end
end
