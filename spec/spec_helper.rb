require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../fizz_buzz_app.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app()
    FizzBuzzApp
  end
end

RSpec.configure { |c| c.include RSpecMixin }
