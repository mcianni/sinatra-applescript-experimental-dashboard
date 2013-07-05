path = File.expand_path("../", __FILE__)

require 'rubygems'
require 'sinatra'
require "#{path}/app"

log = File.new("log/sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application
