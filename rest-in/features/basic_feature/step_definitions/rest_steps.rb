When /^the client request GET (.*)$/ do |path|
	get(path)
end

Then /^the reponse should be JSON:$/ do |json|
	JSON.parse(last_response.body).should == JSON.parse(json)
end