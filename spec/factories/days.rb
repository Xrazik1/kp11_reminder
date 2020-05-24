FactoryBot.define do
  factory :day do
    sequence(:name) { |n| "DayName#{n}" }
    sequence(:date) { |n| "DayDate#{n}" }
    week

    trait :invalid do
      name { nil }
    end
  end
end

