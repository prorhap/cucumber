# coding: utf-8

When /^트위터 Article 문서가 (\d+) , (\w+) , (\w+) 를 갖고 유입됩니다$/ do |id, name, content|
	@last_response = HTTParty.post("http://localhost:4567/twitter/#{id}/#{name}/#{content}", :body => '')
end

Then /^유입된 Article 의 프로세싱 결과는 (\w+) 와 같습니다\.$/ do |result|
	@last_response.parsed_response.should == result
end

Then /^DRP 프로세싱 후, 결과는  \{(\d+), "(.*?)", "(.*?)"\}  와 같습니다\.$/ do |id, name, content|
	twitterService = TwitterService.new
	result = twitterService.addTwitterArticle(id, name, content)

	id.should == result["id"]
	name.should == result["name"]
	content.should == result["content"]
end