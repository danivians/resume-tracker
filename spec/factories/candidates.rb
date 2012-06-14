FactoryGirl.define do
  factory :candidate do
    name { Forgery(:name).full_name }
    intake_date "2012-06-13"
    followup_date "2012-06-14"
    comments "MyText"
    user nil
    source nil
    status nil
  end
end
