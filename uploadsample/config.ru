# Only require this file to start  upload Server.
require 'rubygems'
require 'bundler'

Bundler.require

require './app' # Only require this file to start  upload Server.
begin

  puts ''
  puts ' Sinatra Server ...'
  run Sinatra::Application
rescue Exception => e
  puts("Exception in Sinatra Server:\n#{e.message}\n#{e.backtrace.join("\n")}")
end


