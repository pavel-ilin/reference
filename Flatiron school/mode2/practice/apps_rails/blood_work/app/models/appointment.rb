class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validates :date, :patient_id, :doctor_id, presence: true

end
