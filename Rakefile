# -*- coding: utf-8 -*-
$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'

require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|

  app.name = 'inspect-todo'
  app.identifier = 'com.your_domain_here.inspect-todo'

  app.short_version = '0.1.0'
  app.version = (`git rev-list HEAD --count`.strip.to_i).to_s

  app.deployment_target = '7.1'

  app.icons = Dir.glob("resources/icon*.png").map{|icon| icon.split("/").last}

  app.device_family = [:iphone, :ipad]
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right, :portrait_upside_down]

  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))

  if ENV['integration']
    app.files += Dir.glob(File.join(app.project_dir, "integration_concerns/*.rb"))
  end

  app.pods do
    pod 'JMImageCache'
  end

  app.development do
    app.codesign_certificate = "iPhone Developer: YOURNAME"
    app.provisioning_profile = "signing/inspect-todo.mobileprovision"


    app.info_plist["UIViewControllerBasedStatusBarAppearance"] = false
  end

  app.release do
    app.entitlements['get-task-allow'] = false
    app.codesign_certificate = 'iPhone Distribution: YOURNAME'
    app.provisioning_profile = "signing/inspect-todo.mobileprovision"
    app.entitlements['beta-reports-active'] = true # For TestFlight

    app.seed_id = "YOUR_SEED_ID"
    app.entitlements['application-identifier'] = app.seed_id + '.' + app.identifier
    app.entitlements['keychain-access-groups'] = [ app.seed_id + '.' + app.identifier ]
  end

  puts "Name: #{app.name}"
  puts "Using profile: #{app.provisioning_profile}"
  puts "Using certificate: #{app.codesign_certificate}"
end

# Remove this if you aren't using CDQ
task :"build:simulator" => :"schema:build"
