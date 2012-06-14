FactoryGirl.define do
  factory :user do
    name { Forgery(:name).full_name }
    sequence(:login) { |n| "jbond#{n}" }
  end
end
