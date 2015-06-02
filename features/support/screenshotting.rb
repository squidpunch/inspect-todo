def screenshot_verify(predicate)
  step %~the screen should match "#{predicate.gsub(/'/, '')}"~
end

Then /^the screen should match "([^\"]*)"$/ do |template|
  sleep 1
  screenshotter = Juxtapose::Screenshotter.new(self, template, 0,
    File.expand_path('./'))

  max_attempts = 10
  expect(screenshotter.attempt_verify(max_attempts)).to eq(true)
end
