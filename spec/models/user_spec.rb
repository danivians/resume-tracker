require 'spec_helper'
require 'pp'

describe User do

  it 'builds a valid User from factory' do
    FactoryGirl.build(:user).should be_valid
  end

  it 'is not valid if name is missing'
  it 'is not valid if login is missing'
  it 'is not valid if login is not unique'

  describe '#destroy' do
    before { @user = FactoryGirl.create(:user) }

    context 'when no candidates are assigned to the user' do
      it 'destroys the record' do
        expect { @user.destroy }.to change { User.count }.by(-1)
      end
    end

    context 'when a candidate is still assigned to the user' do
      before { @candidate = FactoryGirl.create(:candidate, user: @user) }

      it 'does not destroy the record' do
        expect { @user.destroy }.to change { User.count }.by(0)
      end

      it 'raises an Exception' do
        expect { @user.destroy }.to raise_error
      end
    end
  end

end
