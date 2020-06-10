FactoryBot.define do
  factory :kookie do
    name { Faker::Lorem.word }
    url { Faker::Internet.url }
    value { Faker::Lorem.sentence }
    path { Faker::File.dir }
    domain { Faker::Internet.domain_name}
    secure { Faker::Boolean.boolean }
    httponly { Faker::Boolean.boolean }
    expiry { Faker::Date.in_date_period(month: 1)}
    seen_date { Faker::Date.in_date_period(month: 1)}
    description { build(:description) }
  end
end
