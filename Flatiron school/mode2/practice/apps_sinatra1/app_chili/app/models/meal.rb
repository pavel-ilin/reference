class Meal < ActiveRecord::Base
  has_many :dinners
  has_many :users, through: :dinner 
end
