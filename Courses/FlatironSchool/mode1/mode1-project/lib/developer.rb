class Developer < ActiveRecord::Base

  # give as instance methods
  has_many :ais
  has_many :problems, through: :ais
end