FactoryBot.define do
  factory :address do
    postal_code        { '000-0000' }
    prefecture         { '愛媛県' }
    city               { '松山市' }
    address            { '道後' }
    building_name      { 'アカギ' }
    user_id            { '1' }
  end
end
