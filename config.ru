require 'rubygems'
require 'bundler'
Bundler.require
require "sinatra/reloader" if development?
require './dev_talk_demo_app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/templates'
  run environment
end

run DevTalkDemoApp
# Running through ssl:
#   thin start --ssl --ssl-verify --ssl-key-file <key file> --ssl-cert-file <crt file> -p 3001
