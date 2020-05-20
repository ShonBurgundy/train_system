require('spec_helper')

describe('#City') do

  describe('.all') do
    it("returns an empty array if no cities have been added") do
      expect(City.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a city') do
      city1 = City.new({:name => "Portland", :id => nil})
      city1.save
      city2 = City.new({:name => "Seattle", :id => nil})
      city2.save
      expect(Train.all).to(eq([city1, city2]))
    end
  end

  describe('#==') do
    it("is the same city if it has the same name") do
      city1 = City.new({:name => "Portland", :id => nil})
      city2 = City.new({:name => "Portland", :id => nil})
      expect(city1).to(eq(city2))
    end
  end

  

end