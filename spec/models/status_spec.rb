require 'spec_helper'

describe Status do

  it 'builds a valid Status from factory' do
    FactoryGirl.build(:status).should be_valid
  end

  it 'is not valid if main is missing'
  it 'is not valid if main is not unique'

  describe '.main_statuses' do
    before :each do
      @s1 = FactoryGirl.create(:status, main: 'one', secondary: 'two')
      @s2 = FactoryGirl.create(:status, main: 'three', secondary: 'four')
    end
    it 'returns an Array of all the main statuses' do
      Status.main_statuses.should =~ ['one', 'three']
    end
  end

  describe '#full_status' do
    before { @status = FactoryGirl.build(:status, main: 'one', secondary: 'two') }
    it 'returns a String containing the main and secondary status' do
      @status.full_status.should include('one')
      @status.full_status.should include('two')
    end
  end

  describe '#destroy' do
    before { @status = FactoryGirl.create(:status) }

    context 'when no candidates are assigned to the status' do
      it 'destroys the record' do
        expect { @status.destroy }.to change { Status.count }.by(-1)
      end
    end

    context 'when a candidate is still assigned to the status' do
      before { @candidate = FactoryGirl.create(:candidate, status: @status) }

      it 'does not destroy the record' do
        expect { @status.destroy }.to change { Status.count }.by(0)
      end

      it 'raises an Exception' do
        expect { @status.destroy }.to raise_error
      end
    end
  end
end
