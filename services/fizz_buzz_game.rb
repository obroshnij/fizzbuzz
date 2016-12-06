class FizzBuzzGame
  def initialize(max = 100)
    @max = max
    @sequence = {}
  end

  def build_sequence
    fb_lambda = lambda do |num|
      case
      when (num % 15).zero? then 'FizzBuzz'
      when (num % 3).zero? then 'Fizz'
      when (num % 5).zero? then 'Buzz'
      else num
      end
    end

    (1..@max).each do |number|
      @sequence[number] = fb_lambda.call(number)
    end

    @sequence
  end
end
