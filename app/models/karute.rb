class Karute < ApplicationRecord
  belongs_to :user
  validates :user_id,{presence: true}
end


# belongs_to :user , optional: true
# belongs_to :user, required: ture
#  validates :user_id,{presence: true}