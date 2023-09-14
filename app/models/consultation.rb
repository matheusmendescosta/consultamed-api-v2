class Consultation < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :clinic
end
