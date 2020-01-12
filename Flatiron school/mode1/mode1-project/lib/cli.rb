require 'tty-prompt'
require "tco"
require "rmagick"

class CommandLineInterface
  attr_reader :prompt

  def initialize
    @prompt = TTY::Prompt.new
  end

  def run
    background_music
    greetings_img
    greetings
    login_signup
  end

  def background_music
    file = "/Users/flatironbrooklyn/Development/code/mode1/guided-module-one-project-assessment-dumbo-web-091619/bin/Brutal Pony Riders - Cyberpunk 2077.mp3"
    play = fork{ exec 'mpg123','-q', file }
    play
  end

  def greetings_img
    sleep(1)
    img = Magick::Image::read("/Users/flatironbrooklyn/Development/code/mode1/guided-module-one-project-assessment-dumbo-web-091619/bin/123.png").first
    i = 1
    if i > 0
      img.each_pixel do |pixel, col, row|
        i = i - 1
        c = [pixel.red, pixel.green, pixel.blue].map { |v| 256 * (v / 65535.0) }
        print("  ".bg c)
        puts if col >= 100
      end
    end
  end

  def greetings
    sleep(1)
    puts ""
    puts "\nT800: ALTERNATE POWER\n"
    puts ""
    sleep(2)
    puts "*******   Welcome to AI marketplace!   *******"
    sleep(2)
    puts "******* With gidence of our superintellegent overlords ******* "
    sleep(2)
    puts "*******  We can build brighter tomorrow! *******"
    sleep(2)
    puts ""
  end

  # First menu
  def login_signup

    user_identity = prompt.select("\nLet's begin\n") do |user|
        user.choice "Login", -> {login}
        user.choice "SignUp", -> {signup}
        user.choice "Exit", -> {exit}
      end
  end

  # Creating account
  def signup
    user_type = prompt.select("What type of account you would like to create?", ["Investor", "Developer"])

    puts "Please create your username"
    username_input = prompt.ask("Username: ")
    while username_input == nil
      puts "Username can't be empty"
      username_input = prompt.ask("Username: ")
    end

    # Checking existing accounts
    if User.exists?(username: username_input) && Developer.exists?(username: username_input)
      puts "This name is taken"
      respond = prompt.select("Would you like to login?", %w(Yes No exit))
      if respond == "Yes"
        login
      elsif respond == "No"
        signup
      elsif respond == "exit"
        exit
      end
     end

    puts "Please create your password"
    password_input = prompt.mask("Password:")
    while password_input == nil
      puts "Password can't be blank"
      password_input = prompt.mask("Password:")
    end

    puts "What is your initial funds?"
    capital_input = prompt.ask("Capital:").strip.to_i
    while capital_input != Integer && capital_input <= 100
      puts "You can survive here without money!"
      capital_input = prompt.ask("Capital:").strip.to_i
    end

    # Creating objects
    if user_type == "Investor"
      User.create(username: username_input, password_digest: password_input, capital: capital_input, user_type: user_type)
    elsif user_type == "Developer"
      Developer.create(username: username_input, password_digest: password_input, capital: capital_input, user_type: user_type)
    end
    sleep(1)
    login
  end

  # Login function
  def login
    puts "Welcome to AI marketplace, please provide your credentials"
    user_type = prompt.select("Choose type of account?", ["Investor", "Developer"])
    puts "Enter username"
    username_input = prompt.ask("Username:")
    while username_input == nil
      puts "Username field can't be blank"
      username_input = prompt.ask("Username:")
    end
    puts "Enter password"
    password_input = prompt.mask("Password:")
    while password_input == nil
      puts "Password can't be blank"
      password_input = prompt.ask("Password")
    end

    # Checking what type of account user have

    if user_type == "Investor"
      user_object = User.find_by(username: username_input, password_digest: password_input)
    elsif user_type == "Developer"
      user_object = Developer.find_by(username: username_input, password_digest: password_input)
    end

    if user_object == nil
      puts "User not found."
      respond = prompt.select("Would you like to create accound?", %w(Yes No exit))
      if respond ==  "Yes"
        signup
      elsif respond == "No"
        login
      elsif respond == "exit"
        exit
      end
    elsif user_object != nil
      main_menu(user_object)
    end
  end

  # Main menu
  def main_menu(user_object)
    # user_name = user_object.username
    # puts "Congratulations #{user_name}, you are in the system"
    investors_money = User.all.select{|investor|investor}.map{|i| i.capital}.sum
    developers_money = Developer.all.select{|developer|developer}.map{|d| d.capital}.sum
    puts "\nSize of the whole pie is $#{investors_money + developers_money}. Would you like a piece?\n"

    puts "\nYour capitalization: $#{user_object.capital}\n"

    # Menu customized according to user type

    if user_object.user_type == "Investor"
      prompt.select("What is your next move?") do |user|
          user.choice "Solve problem", -> {solve_problem(user_object)}
          user.choice "My problems", -> {my_problems(user_object)}
          user.choice "See AI marketplace", -> {marketplace(user_object)}
          user.choice "Change username", -> {change_user_name(user_object)}
          user.choice "Delete account", -> {delete_account(user_object)}
          user.choice "Exit", -> {exit}
        end
    elsif user_object.user_type == "Developer"
      prompt.select("What is your next move?") do |user|
          user.choice "Create new AI", -> {create_ai(user_object)}
          user.choice "My Ais", -> {my_ais(user_object)}
          user.choice "Problems my AI's worked on", -> {my_ais_problems(user_object)}
          user.choice "See AI marketplace", -> {marketplace(user_object)}
          user.choice "Change username", -> {change_user_name(user_object)}
          user.choice "Delete AI", -> {delete_ai(user_object)}
          user.choice "Delete account", -> {delete_account(user_object)}
          user.choice "Exit", -> {exit}
      end
    end
  end

  # Display what problems user tried to solve

  def my_problems(user_object)
    problems = user_object.problems.each {|t| puts "Problem: #{t.title}, Field: #{t.field}, Status: #{t.status}."}
    if problems == []
      puts "Dear #{user_object.username}, you don't have any problems."
    end
    prompt.select("") do |menu|
      menu.choice "Back to main menu", -> {main_menu(user_object)}
    end
  end

  # solving problem

  def solve_problem(user_object)
    user_id = user_object.id

    input_title = prompt.ask("What is your problem?:")
    while input_title == nil
      puts "We can't solve 'nothing'!"
      input_title = prompt.ask("What is your problem?:")
    end
    input_field = prompt.ask("In what field your problem?")
    while input_field == nil
      puts "We can't categorize your problem!"
      input_field = prompt.ask("In what field your problem?")
    end

    # checking if there is any AI which can solve problem
    # "where" return an instance of ActiveRecord::Relation
    ai_objects = Ai.where(specialization: input_field)
    if ai_objects == nil
      print "There is no AI on marketplace whom can solve your problem"
      sleep(2)      
      solve_problem(user_object)
    end

    ###################### rebuild, multiply chose of AIs
    ai_names = ai_objects.map{|i| i.name}.join(",")

    ai_chose = prompt.select("Choose your AI", ai_names.split(","))

    ai_object = ai_objects.find_by(name: ai_chose)

    #############

    # solving process, 30% chances of fail
    # ai_names = ai_object.name
    ai_price = ai_object.price

    user_capital = user_object.capital
    rand_number = rand(1..10)
    status = ""
    profit = 0

    # Calculating profits and losses

      if rand_number == 5 && 7 && 2
        status = "failed"
        outcom = user_capital - ai_price
      else
        status = "solved"
        outcom = user_capital +(ai_price * 0.3)
    end

    #checking if investor has enough capital
    if ai_price > user_capital
      puts "Enceficent funds"
      sleep(3)
      puts "Get a job!"
      sleep(3)
      main_menu(user_object)
    else
      # creation of problem
      user_object.problems.create(title: input_title, field: input_field, status: status, user_id: user_id, ai_id: ai_object.id)
      if status == "solved"
        puts "Problem #{input_title} sucessfuly solved!"
        sleep(3)
      elsif status == "failed"
        puts "Problem #{input_title} not solved!"
        sleep(3)
        puts "Money lost!"
        sleep(3)
      end
    end
    # Updating user capital
    user_object.update(capital: outcom)
    main_menu(user_object)
  end

  # display all AI on marketplace
  def marketplace (user_object)
    puts "Here is AI's available on the market for you!"
    ais = Ai.all.each{ |ai| puts "Name: #{ai.name}, Field: #{ai.specialization}, Price:  #{ai.price}."}

    prompt.select("") do |i|
      i.choice "Back to main menu", -> {main_menu(user_object)}
    end
  end

  def change_user_name(user_object)
    new_username = prompt.ask("Please enter new username: ")
    while new_username == nil
      puts "Username can't be blank"
      new_username = prompt.ask("Please enter new username: ")
    end
    user_object.update(username: new_username)
    puts "Dear #{user_object.username}, you name has been changed"
    sleep(2)
    main_menu(user_object)
  end

  # removing account from database (developer or investor, depence on the "user_object" value)
  def delete_account(user_object)
    user_object.problems.each{|i| i.destroy}
    user_object.destroy
    puts ("Your accout has been deleted. You are too weak to take over the world!")
    sleep(3)
    login_signup
  end

#################### Developer

  # Creat new AI

  def create_ai(user_object)
    name_input = prompt.ask("Name your AI?")
    while name_input == nil
      puts "Nameless AI? Nonsense!"
      name_input = prompt.ask("Name your AI? ")
    if Ai.exists?(name: name_input)
      puts "This name is taken\n"
      create_ai(user_object)
    end
    end

    input_specialization = prompt.ask("In what field your AI specialized?")
    while input_specialization == nil
      puts "For now you can create only narrow AI. AGI on mod 5!"
      input_specialization = prompt.ask("In what field your AI specialized?")
    end

    input_price = prompt.ask("How much you want for this AI?").strip.to_i
    while input_price != Integer && input_price <= 50
      puts "You do want to make money, right?"
      input_price = prompt.ask("How much you want for this AI?").strip.to_i
    end

    rand_number = rand(1..10)
    status = ""
    capital = user_object.capital
    if capital < 100
      puts "When you check you bank account last time?"
      sleep(1)
      puts "It's empty bro!"
    end
      if rand_number == 5 && 7 && 2
        status = "failed"
        puts "Code challenge failed!"
        sleep(2)
        puts "Go and study!!!"
        sleep(2)
        puts "You just lost $#{100} by the way!"
      else
        status = "solved"
        sleep(1)
        puts "AI #{name_input} was successfully created!"
        user_object.ais.create(name: name_input, specialization: input_specialization, price: input_price, developer_id: user_object.id)
      end

      expences = capital  - 100
      user_object.update(capital: expences)

      prompt.select("") do |menu|
        menu.choice "Back to main menu", -> {main_menu(user_object)}
    end
  end

  # Display all problems my AIs worked on

  def my_ais_problems(user_object)
    # "where" return an instance of ActiveRecord::Relation

    problem_object = user_object.problems

    puts "Here is problems your AI's worked on\n"
    problem_object.each{|p| puts "Title: #{p.title}, Fiedl: #{p.field} Status: #{p.status} AI: #{p.ai.name}"}

    prompt.select("") do |menu|
      menu.choice "Back to main menu", -> {main_menu(user_object)}
    end
  end

  # Display all AIs developer created

  def my_ais(user_object)
    ai_object = user_object.ais.where(developer_id: user_object.id).each{|ai| puts "Name: #{ai.name}, Field: #{ai.specialization}, Price:  #{ai.price}."}

    # ai_object = user_object.ais.select{|i|i.developer_id == user_object.id}.each{|ai| puts "Name: #{ai.name}, Field: #{ai.specialization}, Price:  #{ai.price}."}

    prompt.select("") do |menu|
      menu.choice "Back to main menu", -> {main_menu(user_object)}
    end
  end

  # Delete AI from database

  def delete_ai(user_object)
    # "where" return an instance of ActiveRecord::Relation
    ai_objects = user_object.ais.where(developer_id: user_object.id)
    if ai_objects == []
      puts "You didn't create any AI yet"
      sleep(2)
      main_menu(user_object)
    end
    ai_names = ai_objects.map{|i| i.name}.join(",")

    ai_chose = prompt.select("Choose your AI", ai_names.split(","))

    ai_object = ai_objects.find_by(name: ai_chose)
    puts ("AI #{ai_object.name} has been deleted. Let's build some more!")
    ai_object.destroy
    sleep(2)
    main_menu(user_object)
  end

end