class BusinessFacade
  def self.find_business(location,food)
  	data = BusinessService.get_business(location,food)
    business = Business.new(data)
  end
end
