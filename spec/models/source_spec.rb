require 'spec_helper'

describe Source do

  it 'builds a valid Source from factory' do
    FactoryGirl.build(:source).should be_valid
  end

  it 'is not valid if name is missing'
  it 'is not valid if name is not unique'

end
