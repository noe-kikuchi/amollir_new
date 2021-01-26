FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 7) }
    password_confirmation { password }
    family_name           { '松本' }
    first_name            { '太郎' }
    family_name_kana      { 'マツモト' }
    first_name_kana       { 'タロウ' }
    birth_date_id         { Faker::Date.backward }
    phone_number          { '00000000000' }
  end
end
