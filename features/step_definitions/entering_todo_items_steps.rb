When(/^I add a new todo item with body "([^"]*)"$/) do |content|
  step %~I touch "Add"~
  find_element(:name, "What do you need todo?").send_keys(content)
  step %~I touch "Save"~
end

Then(/^I should be on the todo list showing my new entry$/) do
  screenshot_verify "my added todo item"
end
