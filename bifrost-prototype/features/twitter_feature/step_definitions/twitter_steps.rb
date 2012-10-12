When /^the client is adding twitter article with (\d+) , (\w+) , (\w+)$/ do |id, name, content|
	@last_response = HTTParty.post("http://localhost:4567/twitter/#{id}/#{name}/#{content}", :body => '')
end

Then /^the result should be (\w+)$/ do |result|
	@last_response.parsed_response.should == result
end

Then /^the result of DRP processing stored in DB should be \{(\d+), "(.*?)", "(.*?)"\}$/ do |id, name, content|
	twitterService = TwitterService.new
	result = twitterService.addTwitterArticle(id, name, content)

	id.should == result["id"]
	name.should == result["name"]
	content.should == result["content"]
end