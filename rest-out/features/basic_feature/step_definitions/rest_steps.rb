When /^the client request GET (.*)$/ do |path|
	@last_response = HTTParty.get('http://localhost:9999' + path)
end

Then /^the reponse should be JSON:$/ do |json|
	JSON.parse(@last_response.body).should == JSON.parse(json)
end