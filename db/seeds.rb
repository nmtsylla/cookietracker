# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars',,: name: 'Lord of the Rings',])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Description.create(
    name: Faker::Lorem.word,
    description: Faker::Lorem.sentence,
    online_description: Faker::Lorem.sentence
  )
end

50.times do
  Website.create(
    url: Faker::Internet.url,
    scan_schedule: :weekly,
    weekly_scan_day: (0..6).to_a.sample,
    added_date: Faker::Date.in_date_period(month: 1),
    customer_id: (1..50).to_a.sample,
  )
end

200.times do
  Kookie.create(
    name: Faker::Lorem.word,
    url: Faker::Internet.url,
    value: Faker::Lorem.sentence,
    path: Faker::File.dir,
    domain: Faker::Internet.domain_name,
    secure: Faker::Boolean.boolean,
    httponly: Faker::Boolean.boolean,
    expiry: Faker::Date.in_date_period(month: 1),
    seen_date: Faker::Date.in_date_period(month: 1),
    description_id: (1..30).to_a.sample,
    website_id: (1..50).to_a.sample,
  )
end