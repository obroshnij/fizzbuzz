require 'ostruct'
require 'pry'

class FizzBuzzGame
  def initialize(max = 100)
    @max = max
    @sequence = Hash.new
  end

  def build_sequence
    fb_lambda = lambda do |num|
      case
      when num % 15 == 0 then "FizzBuzz"
      when num % 3  == 0 then "Fizz"
      when num % 5  == 0 then "Buzz"
      else num
      end
    end
    (1..@max).each do |number|
      @sequence[number] = fb_lambda.call(number)
    end

    @sequence
  end
end
