When(/^I touch "([^"]*)"$/) do |view_name|
  find_element(:name, view_name).click
end
