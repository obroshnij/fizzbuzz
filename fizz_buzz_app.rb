require 'sinatra'

class FizzBuzzApp < Sinatra::Base
  get '/' do
    "Hello, world!"
  end
end
