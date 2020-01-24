require_relative 'config/environment'

class App < Sinatra::Base
  sophie = Owner.create(name: "Sophie")
  maru = Cat.new(name: "Maru", age: 3, breed: "Scottish Fold")
  maru.owner = sophie
  maru.save
end