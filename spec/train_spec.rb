require('spec_helper')
require 'rspec'

describe '#Train' do

  describe('.all') do
    it("returns an empty array if no trains have been added") do
      expect(Train.all).to(eq([]))
    end  
  end

  # describe('#save') do
  #   it('saves a train') do
  #     train1 = Train.new({:name => "A", :id => nil})
  #     train1.save
  #     train2 = Train.new({:name => "B", :id => nil})
  #     train2.save
  #     expect(Train.all).to(eq([train1, train2]))
  #   end
  # end

  describe('#==') do
    it("is the same train if it has the same name") do
      train1 = Train.new({:name => "A", :id => nil})
      train2 = Train.new({:name => "A", :id => nil})
      expect(train1).to(eq(train2))
    end
  end


end