require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, ENV["RACK_ENV"])

$:.unshift File.expand_path(File.join(__dir__, "../"))

# I don't really _like_ mass-requiring everything
# in the app directory....
Dir[File.join(__dir__, '../', 'app', '**', '*.rb')].each {|file| require file }

ENV["RACK_ENV"] ||= "development"

