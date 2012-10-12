			
Feature: Twitter
	Scenario Outline: Add Twitter Article
		When the client is adding twitter article with <ID> , <Name> , <Content>
		Then the result should be <Result>
		Then the result of DRP processing stored in DB should be <DbResult>

		Examples:
			| ID 	| Name 		| Content 	| Result 	| DbResult 					|
			| 1		| rhapsody	| hello 	| true		| {1, "rhapsody", "hello"}	|
			| 2		| thkim		| pretty	| true		| {2, "thkim", "pretty"}	|
			| 3		| cindy		| sexy 		| true		| {3, "cindy", "sexy"}		|
