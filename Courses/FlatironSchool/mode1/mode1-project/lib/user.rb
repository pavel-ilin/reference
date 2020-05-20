class User < ActiveRecord::Base

  # return instance methods
  has_many :problems
  has_many :ais, through: :problems

  # def self.handle_returning_user
  #   puts "Welcome back! What is your username?"
  #   username = gets.chomp
  #   # puts "What is your password?"
  #   # passwordVar = @@prompt.mask("What is your password?")
  #   User.find_by(username: username)
  # end

end