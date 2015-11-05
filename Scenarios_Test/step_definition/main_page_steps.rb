Given (/^I am in main page screen$/) do
	@main_page_screen = MainPageScreen.new
	@main_page_screen.wait_for_screen
end


When (/^I fill url field with "(.*?)"$/) do |url|
	@main_page_screen.fill_url_field(url.to_s)
end

And (/^I touch go button$/) do
	@main_page_screen.touch_go_button
end

Then (/^I should see url shorter in result box$/) do
	assert(@main_page_screen.are_url_shorter, "This field are empty")
end