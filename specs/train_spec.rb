require('spec_helper')

describe '#Train' do

  describe('.all')do
    it("returns an empty array if no trains have been added") do
      expect(Train.all).to(eq([]))
    end  
  end

end