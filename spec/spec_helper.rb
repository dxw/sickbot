require "rack/test"
require "rspec"
require "pry"

ENV["RACK_ENV"] = "test"

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib")

require "sickbot"

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
