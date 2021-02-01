class Karute < ApplicationRecord
  belongs_to :patient, optional: true
  validates :patient_id,{presence: true}
end
