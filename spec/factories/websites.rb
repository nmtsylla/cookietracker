FactoryBot.define do

  factory :website do
    url { Faker::Internet.url }
    scan_schedule { :weekly }
    weekly_scan_day { (0..5).to_a.sample }
    added_date { Faker::Date.in_date_period(month: 1) }
    customer_id { (1..50).to_a.sample }
  end
end
