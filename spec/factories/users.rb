FactoryBot.define do
  factory :user do
    user_img              {"#<ActionDispatch::Http::UploadedFile:0x00007fd730eb0dc0>"}
    family_name           {"佐藤"}
    family_name_kana      {"サトウ"}
    name                  {"一郎"}
    name_kana             {"イチロウ"}
    nickname { Faker::Name.name }
    gender                {"女性"}
    phone                 {"08012345678"}
    email { Faker::Internet.email }
    password              {"1234567"}
    password_confirmation {"1234567"}
    birthday              {"2020-03-16"}
  end
end
