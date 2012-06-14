require 'spec_helper'

describe Candidate do

  it 'builds a valid Candidate from factory' do
    FactoryGirl.build(:candidate).should be_valid
  end

  it 'is not valid if name is missing'

end
