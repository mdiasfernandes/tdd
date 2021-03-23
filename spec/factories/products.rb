FactoryBot.define do
  factory :product do
    description { Faker::Commerce.material }
    price { Faker::Commerce.price }
    category
  end
end
