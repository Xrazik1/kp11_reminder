FactoryBot.define do
  factory :group do
    sequence(:name) { |n| "GroupName#{n}" }

    trait :invalid do
      name { nil }
    end
  end
end

