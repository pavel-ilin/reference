class Result < ApplicationRecord
  belongs_to :patient

  validates :date, :systolic, :diastolic, :weight, :temperature, :patient_id, presence: true
end
