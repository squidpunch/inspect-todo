require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'motion-juxtapose'

Juxtapose::AppiumStrategy.setup

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld; end

# Load the desired configuration from appium.txt, create a driver then
caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
File.expand_path("../../../build/iPhone*-Development/", __FILE__).tap do |f|
  caps[:caps][:app] = Dir.glob("#{f}/*.app").first
end
Appium::Driver.new(caps)

# Add the methods to the world
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
