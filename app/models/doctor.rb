class Doctor < ApplicationRecord
  belongs_to :specialty
  belongs_to :clinic
end
