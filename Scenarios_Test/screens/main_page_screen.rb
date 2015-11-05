class MainPageScreen

	SCREEN_HEADER = {
		web: "mainPage"
	}

	URL_FIELD = {
		web: "{ type: "input", expression: {id: "basic-url"}}"
	}

	GO_BUTTON = {
		web: "web: { type: "button", expression: {class: 'input-group-btn'}}"
	}

def initialize
    super SCREEN_HEADER
end 

def wait_for_screen(timeout = 20)
    alert_saved = false
    puts "Waiting for screen of type #{self.class}"
    while (timeout > 0)
      if (screen_exists?)
        puts "Screen Found!!!"
        return
      end
      alert_saved = check_alerts alert_saved
      trace_sleep(1)
      timeout -= 1
    end
    fail("Timeout waiting for screen of type #{self.class}")
end

def fill_url_field(url)
 	fill(URL_FIELD, url)
end

def touch_go_button
	tap(GO_BUTTON)
end

def are_url_shorter(text)
	predicate_contains(@selector,text)
end
