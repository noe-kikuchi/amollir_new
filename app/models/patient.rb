class Patient < ApplicationRecord
  has_one :karute
  has_one :patient_address

  with_options presence: true do
    validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birth_date_id
    validates :phone_number, format: { with: /\A\d{11}\z/ }
  end
end
