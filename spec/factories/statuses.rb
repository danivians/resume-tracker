FactoryGirl.define do
  factory :status do
    primary { Forgery(:name).female_first_name }
    secondary { Forgery(:name).male_first_name }
  end
end
