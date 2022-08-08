class BusinessSerializer
  def self.serialize(weather, business)
    {
  "data": {
    "id": "null",
    "type": "munchie",
    "attributes": {
      "destination_city": business.city,
      "forecast": {
        "summary": weather[:current_weather].conditions,
        "temperature": weather[:current_weather].temperature
      },
      "restaurant": {
        "name": business.name,
        "address": business.address
      }
    }
  }
}
end
end
