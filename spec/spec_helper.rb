require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

RACKUP_FILE = File.expand_path('../../app/config.ru', __FILE__)
APP = eval("Rack::Builder.new {\n#{File.read(RACKUP_FILE)}\n}.to_app", TOPLEVEL_BINDING, RACKUP_FILE, 0)

module RSpecMixin
  include Rack::Test::Methods
  def app() APP end
end
RSpec.configure { |c| c.include RSpecMixin }
