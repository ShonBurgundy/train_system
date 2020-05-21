require('spec_helper')
require 'rspec'

describe '#Train' do

  describe('.all') do
    it("returns an empty array if no trains have been added") do
      expect(Train.all).to(eq([]))
    end  
  end

  describe('#save') do
    it('saves a train') do
      train1 = Train.new({:name => "A", :id => nil})
      train1.save
      train2 = Train.new({:name => "B", :id => nil})
      train2.save
      expect(Train.all).to(eq([train1, train2]))
    end
  end

  describe('#==') do
    it("is the same train if it has the same name") do
      train1 = Train.new({:name => "A", :id => nil})
      train2 = Train.new({:name => "A", :id => nil})
      expect(train1).to(eq(train2))
    end
  end

  describe('.clear') do
    it("clears all trains") do
      train1 = Train.new({:name => "A", :id => nil})
      train1.save
      train2 = Train.new({:name => "B", :id => nil})
      train2.save
      Train.clear()
      expect(Train.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a train by id") do
      train1 = Train.new({:name => "A", :id => nil})
      train1.save
      train2 = Train.new({:name => "B", :id => nil})
      train2.save
      expect(Train.find(train1.id)).to(eq(train1))
    end
  end

  describe('#update') do
    it("updates a train by id") do
      train1 = Train.new({:name => "A", :id => nil})
      train1.save()
      train1.update({:name => "C"})
      expect(train1.name).to(eq("C"))
    end
  end

  describe('#delete') do
    it("deletes a train") do
      train = Train.new({:name => "A", :id => nil})
      train.save()
      train2 = Train.new({:name => "B", :id => nil})
      train2.save()
      train.delete
      expect(Train.all).to(eq([train2]))
    end
  end
    
  describe('#update') do
    it("adds a city to a train") do
      train = Train.new({:name => "A", :id => nil})
      train.save()
      city = City.new({:name => "Portland", :id => nil})
      city.save()
      train.update({:city_name => "Portland"})
      expect(train.cities).to(eq([city]))
    end
  end



end