Feature: MainPage

	@ShortURL
	@HappyPath
	Scenario Outline: Complete flow of URL shorter
		Given I am in main page screen
		When I fill url field with "<url>"
			And I touch go button
		Then I should see url shorter in result box

		@pro @int
		Examples
      		| url                                    |
      		| https://www.myurltest.com/examplefortest  |
