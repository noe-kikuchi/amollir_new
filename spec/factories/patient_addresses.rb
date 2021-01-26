FactoryBot.define do
  factory :patient_address do
    postal_code        { '000-0000' }
    prefecture_id      { '愛媛県' }
    city               { '松山市' }
    address            { '道後' }
    building_name      { 'アカギ' }
    patient_id         { '1' }
  end
end
