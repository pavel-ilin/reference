require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # get "/reversename" do
  #   erb :reversename
  # end

  get "/reversename/:name" do
    @user_name = params[:name].reverse
     "#{@user_name}"
   end

   get "/square/:number" do
     @square_number = params[:number].to_i ** 2
     "#{@square_number.to_s}"
   end

   get "/say/:number/:phrase" do
     @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
   end

   get "/say/:word1/:word2/:word3/:word4/:word5" do
     @say = "#{params[:word1]} " + "#{ params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
    "#{@say}"
   end

   get "/:operation/:number1/:number2" do
     @math = [params[:number1].to_i + params[:number2].to_i, params[:number1].to_i - params[:number2].to_i, params[:number1].to_i * params[:number2].to_i,params[:number1].to_i / params[:number2].to_i]
     @math.to_s
   end

end