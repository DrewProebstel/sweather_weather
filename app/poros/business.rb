class Business
attr_reader :name, :address, :city
  def initialize(data)
    @name = data[:businesses][0][:name]
    @address = data[:businesses][0][:location][:display_address][0] + ", " + data[:businesses][0][:location][:display_address][1]
    @city = data[:businesses][0][:location][:city] + ", " + data[:businesses][0][:location][:state]
  end
end
