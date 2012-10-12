require File.join(File.dirname(__FILE__), '..', '..', 'fruit_app')
require 'rack/test'

module AppHelper
	# Rack-Test expects the app method to return a Rack application def app
	def app
		FruitApp
	end
end

# Registers two Ruby modules with in Cucumber first Rack::Test::Methods, which defines the HTTP simulation method like get
#, and then our own helper module that we define right above.
World(Rack::Test::Methods, AppHelper)