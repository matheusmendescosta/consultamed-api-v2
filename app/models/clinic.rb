class Clinic < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :address
  belongs_to :specialty
end
