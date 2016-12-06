require 'sinatra'
require './services/fizz_buzz_game'
require './helpers'

class FizzBuzzApp < Sinatra::Base
  helpers Helpers

  get '/' do
    params[:number] ||= 100
    @sequence = FizzBuzzGame.new(params[:number].to_i).build_sequence
    erb :index
  end
end
