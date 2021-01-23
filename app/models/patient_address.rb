class PatientAddress < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  
  belongs_to :patient, optional: true

  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/ }
    validates :prefecture_id
    validates :city
    validates :address
  end
end
