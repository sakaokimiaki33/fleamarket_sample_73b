FactoryBot.define do
  factory :address do
    family_name_deliver              {"佐藤"}
    name_deliver           {"一郎"}
    postal_code                  {"5420076"}
    prefecture             {"大阪府"}
    city              {"大阪市中央区"}
    block                {"難波4-1-17"}
    building                 {"5F"}
    association :user
  end
end