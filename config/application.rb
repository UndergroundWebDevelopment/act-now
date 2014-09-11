require 'rubygems'
require 'bundler/setup'

ENV["ACT_NOW_ENV"] = ENV["RACK_ENV"] || "development"
Bundler.require(:default, ENV["ACT_NOW_ENV"])

$:.unshift File.expand_path(File.join(__dir__, "../"))

# I don't really _like_ mass-requiring everything
# in the app directory....
Dir[File.join(__dir__, '../', 'app', '**', '*.rb')].each {|file| require file }

ENV["RACK_ENV"] ||= "development"

I18n.enforce_available_locales = true

Chassis.repo.register :memory, MemoryRepo.new
Chassis.repo.use :memory
