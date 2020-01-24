require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
     erb :hello
  end

  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end


   get "/goodbye/:name" do
     @user_name = params[:name]
     erb :goodbye
   end

   get '/multiply/:num1/:num2' do
      @operation = params[:operation]
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      erb :multiply
   end

end