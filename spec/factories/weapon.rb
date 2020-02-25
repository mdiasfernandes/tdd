FactoryBot.define do
  factory :weapon do
    name { Faker::Name.first_name }
    description { Faker::Name.first_name }
    power_base { Faker::Number.within(range:3000..999999) }
    power_step { Faker::Number.within(range:100..999999) }
    level { Faker::Number.within(range:1..999999) }
  end
end
