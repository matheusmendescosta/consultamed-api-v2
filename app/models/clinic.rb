class Clinic < ApplicationRecord
  has_many :doctor
  belongs_to :patient
  belongs_to :address
  belongs_to :specialty

  #has_many :doctor
end
