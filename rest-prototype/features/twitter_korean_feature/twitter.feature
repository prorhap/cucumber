			
Feature: Twitter-Korean
	Scenario Outline: Add Twitter Article
		When 트위터 Article 문서가 <ID> , <Name> , <Content> 를 갖고 유입됩니다
		Then 유입된 Article 의 프로세싱 결과는 <Result> 와 같습니다.
		Then DRP 프로세싱 후, 결과는  <DbResult>  와 같습니다.

		Examples:
			| ID 	| Name 		| Content 	| Result 	| DbResult 					|
			| 1		| rhapsody	| hello 	| true		| {1, "rhapsody", "hello"}	|
			| 2		| thkim		| pretty	| true		| {2, "thkim", "pretty"}	|
			| 3		| cindy		| sexy 		| true		| {3, "cindy", "sexy"}		|
