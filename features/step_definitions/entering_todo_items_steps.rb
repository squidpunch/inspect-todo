When(/^I enter "([^"]*)" into the body$/) do |content|
  find_element(:name, "What do you need todo?").send_keys(content)
end

Then(/^I should be on the todo list showing my new entry$/) do
  screenshot_verify "my added todo item"
end
