class Patient < ApplicationRecord
  belongs_to :doctor

  has_many :results
  has_many :appointments

  validates :name, :password, :age, :gender, :doctor_id, presence: true

end
