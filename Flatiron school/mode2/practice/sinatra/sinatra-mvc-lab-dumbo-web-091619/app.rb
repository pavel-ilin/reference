require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @user_phrase = params[:user_phrase]
    play = PigLatinizer.new
    play.piglatinize(@user_phrase)
  end

end