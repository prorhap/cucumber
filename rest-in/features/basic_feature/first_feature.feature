Feature: In-Process
	Scenario: List fruit
		Given the system knows about the following fruit:
			| name			| color		|
			| banana		| yellow	|
			| strawberry	| red		|
			| apple			| red		|
		When the client request GET /fruits
		Then the reponse should be JSON:
			"""
			[
				{"name": "banana", "color": "yellow"},
				{"name": "strawberry", "color": "red"},
				{"name": "apple", "color": "red"}
			]
			"""

			
