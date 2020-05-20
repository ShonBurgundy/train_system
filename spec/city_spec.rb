require('spec_helper')

describe('#City') do

  describe('.all') do
    it("returns an empty array if no cities have been added") do
      expect(City.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a city') do
      city1 = City.new({:name => "Portland", id => nil})
      city1.save
      city2 = City.new({:name => "Portland", id => nil})
      city1.save
    end
  end


end