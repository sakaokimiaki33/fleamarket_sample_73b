FactoryBot.define do



  factory :item do
    name {"sakao"}
    price {"1111"}
    product_description {"テスト"}
    size {"M"}
    brand {"IOKA"}
    condition_id {"1"}
    delivary_charge_id {"1"}
    sender_id {"1"}
    shipping_date_id {"1"}
    saler_id {"1"}
    buyer_id {"1"}

    after(:build) do |item|
      item.images << build(:image, item: item)
    end
  end

  factory :image do
    image   { Rack::Test::UploadedFile.new(File.join(Rails.root, "spec/factories/test.png"), 'image/png') }
  end
end

