class BusinessService
  def self.get_business(location, food)
  	  response = Faraday.get("https://api.yelp.com/v3/businesses/search") do |faraday|
  	  				faraday.headers['authorization'] = ENV.fetch('yelp_bearer', nil)
  	  				faraday.params['location'] = location
  	  				faraday.params['categories'] = food
  	  end
  	  JSON.parse(response.body, symbolize_names: true)
  end
end
