require 'rails_helper'

RSpec.describe Business do
  it 'buisness has the expected types' do
      VCR.use_cassette("BusinessFacade_facade") do
    	results = BusinessFacade.find_business("portland,or","chinese")

      expect(results).to be_a(Business)
      expect(results.name).to be_a(String)
      expect(results.address).to be_a(String)
      expect(results.city).to be_a(String)
    end
  end
end
