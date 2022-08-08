require 'rails_helper'

RSpec.describe BusinessFacade do
  it 'returns resturant info when given a catagory' do
      VCR.use_cassette("BusinessFacade_facade") do
    	results = BusinessFacade.find_business("portland,or","chinese")

      expect(results).to be_a(Business)
      expect(results.name).to eq("Bing Mi Food Truck")
      expect(results.address).to eq("1845 NW 23rd Pl, Portland, OR 97210")
    end
  end
end
