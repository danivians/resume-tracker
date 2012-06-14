require 'spec_helper'

describe User do

  it 'builds a valid User from factory' do
    FactoryGirl.build(:user).should be_valid
  end

  it 'is not valid if name is missing'
  it 'is not valid if login is missing'
  it 'is not valid if login is not unique'

end
