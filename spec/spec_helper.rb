require 'bundler/setup'
require 'sinatra'
Bundler.require :default, Sinatra::Application.environment
require 'capybara'
require 'capybara/dsl'

require_relative '../dev_talk_demo_app'
Capybara.app = DevTalkDemoApp

RSpec.configure do |config|
  config.include Capybara::DSL
end
