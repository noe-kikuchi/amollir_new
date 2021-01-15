class Address < ApplicationRecord
  belongs_to :user, optional: true
  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/ }
    validates :prefecture
    validates :city
    validates :address
  end
end
