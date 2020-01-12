require 'pry'


require_relative '../config/environment'

# DATA SEEDS IF NEEDED

# User.destroy_all
# Ai.destroy_all
# Problem.destroy_all
# Developer.destroy_all
#
# investor1 = User.create(username: "Natasha", password_digest: 123, capital: 1000, user_type: "Investor")
# investor2 = User.create(username: "Alex", password_digest: 123, capital: 1000, user_type: "Investor")
#
# developer1 = Developer.create(username: "Alex", password_digest: 123, capital: 1000, user_type: "Developer")
# developer2 = Developer.create(username: "Ben", password_digest: 123, capital: 1000, user_type: "Developer")
#
# ai1 = Ai.create(name: "SHODAN", specialization: "medicine", price: 100, developer_id: developer1.id)
# ai2 = Ai.create(name: "Tachikoma", specialization: "military", price: 500, developer_id: developer1.id)
# ai3 = Ai.create(name: "ctOS", specialization: "social", price: 150, developer_id: developer2.id)
# ai4 = Ai.create(name: "Colossus", specialization: "social", price: 150, developer_id: developer2.id)
# ai4 = Ai.create(name: "Eliza Cassan", specialization: "media", price: 150, developer_id: developer2.id)
#
#
# Problem.create(title: "Cure aging", field: "medicine", status: "solved", user_id: investor1.id, ai_id: ai1.id)
# Problem.create(title: "Gender equality", field: "social", status: "solved", user_id: investor2.id, ai_id: ai3.id)
# Problem.create(title: "End poverty", field: "social", status: "solved", user_id: investor1.id, ai_id: ai4.id)
# Problem.create(title: "Take care of Russia", field: "military", status: "solved", user_id: investor2.id, ai_id: ai2.id)
# Problem.create(title: "Fake news", field: "media", status: "solved", user_id: investor2.id, ai_id: ai2.id)


cli = CommandLineInterface.new
cli.run

# binding.pry
# 0