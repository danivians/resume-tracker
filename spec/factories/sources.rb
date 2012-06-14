FactoryGirl.define do
  factory :source do
    name { Forgery(:name).company_name }
  end
end
