class Patient < ApplicationRecord
  has_one :karute, dependent: :destroy
  has_one :patient_address, dependent: :destroy

  with_options presence: true do
    validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birth_date_id
    validates :phone_number, format: { with: /\A\d{11}\z/ }
  end

  def self.search(search)
    if search != ""
      Patient.where('family_name LIKE ? OR first_name LIKE ? OR family_name_kana LIKE ? OR first_name_kana LIKE ? OR phone_number LIKE ? ' , "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Patient.all
    end
  end
end
