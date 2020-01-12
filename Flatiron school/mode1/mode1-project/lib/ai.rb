class Ai < ActiveRecord::Base
  belongs_to :developer

  # give as instance methods
  has_many :problems
  has_many :users, through: :problems
end