require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Lab completed!"
  end

  get '/name' do
    "My name is Pavel"
  end

  get '/hometown' do
    "My hometown is Eysk"
  end


  get '/favorite-song' do
    "My favorite song is Highway to hell"
  end

end
