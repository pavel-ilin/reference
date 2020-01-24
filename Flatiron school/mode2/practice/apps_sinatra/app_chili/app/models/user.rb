class User < ActiveRecord::Base
  has_many :dinners
  has_many :meals, through: :dinners
end
