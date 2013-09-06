# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'hlist'
  app.deployment_target = "5.1"
  app.device_family = [:ipad]
  app.version = "1.0.0"
  app.short_version = app.version
  app.interface_orientations = [:portrait]
  
  app.libs << "-fobjc-arc"
end
