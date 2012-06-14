require 'spec_helper'

describe Status do

  it 'builds a valid Status from factory' do
    FactoryGirl.build(:status).should be_valid
  end

  it 'is not valid if primary is missing'
  it 'is not valid if primary is not unique'

  describe '.primaries' do
    before :each do
      @s1 = FactoryGirl.create(:status, primary: 'one', secondary: 'two')
      @s2 = FactoryGirl.create(:status, primary: 'three', secondary: 'four')
    end
    it 'returns an Array of all the primary statuses' do
      Status.primaries.should =~ ['one', 'three']
    end
  end

  describe '#full_status' do
    before { @status = FactoryGirl.build(:status, primary: 'one', secondary: 'two') }
    it 'returns a String containing the primary and secondary status' do
      @status.full_status.should include('one')
      @status.full_status.should include('two')
    end
  end

end
