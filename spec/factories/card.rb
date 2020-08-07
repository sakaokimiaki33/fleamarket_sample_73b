FactoryBot.define do
  factory :card do
    customer_id                  {"cus_6ebacd05dd66d4ba0593ef4c20ad"}
    card_id   {"car_7da7052d5576fcf16271163ad6ef"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    updated_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
end
