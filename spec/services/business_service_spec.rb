require 'rails_helper'

RSpec.describe BusinessService do
  it 'returns resturant info when given a catagory' do
      VCR.use_cassette("BusinessFacade_facade") do
    	results = BusinessService.get_business("portland,or","chinese")
    	expect(results).to be_a(Hash)
      expect(results[:businesses]).to be_a(Array)
      expect(results[:businesses][0]).to be_a(Hash)
      expect(results[:businesses][0][:name]).to be_a(String)
      expect(results[:businesses][0][:location][:address1]).to be_a(String)
      expect(results[:businesses][0][:location][:city]).to be_a(String)
      expect(results[:businesses][0][:location][:zip_code]).to be_a(String)
      expect(results[:businesses][0][:location][:display_address]).to be_a(Array)
      expect(results[:businesses][0][:location][:display_address][0]).to be_a(String)
    end
  end
end
