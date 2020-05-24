FactoryBot.define do
  factory :notice do
    sequence(:content) { |n| "NoticeContent#{n}" }
    day

    trait :invalid do
      content { nil }
    end
  end
end

