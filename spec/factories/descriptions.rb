FactoryBot.define do
  factory :description do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    online_description { Faker::Lorem.sentence }
  end
end
