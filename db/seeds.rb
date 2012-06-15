# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  FactoryGirl.create(:user)
  FactoryGirl.create(:source)
  status = FactoryGirl.build(:status)
  status.save if status && status.valid?
end

100.times do
  candidate = FactoryGirl.build(:candidate)
  candidate.user = User.all.sample if rand(5) > 0
  candidate.source = Source.all.sample if rand(8) > 0
  candidate.status = Status.all.sample if rand(8) > 0
  candidate.save
end
