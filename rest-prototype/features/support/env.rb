require 'childprocess'
require 'timeout'
require 'httparty'


class TwitterService
	# Rack-Test expects the app method to return a Rack application def app

	def addTwitterArticle(id, name, content)

		# puts "access database and fetch the result of drp processing for params"

		result = Hash.new
		result["id"] = id
		result["name"] = name
		result["content"] = content

		result
	end
end
