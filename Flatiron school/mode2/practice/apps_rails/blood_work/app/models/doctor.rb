class Doctor < ApplicationRecord
  has_many :patients
  has_many :appointments
  has_many :results, through: :patients

  # ActionController::Parameters.permit_all_parameters = true
  validates :name, :password, :doctor_spec, presence: true, length: { minimum: 5, message: "to short (minimum 5 character)" }


end
