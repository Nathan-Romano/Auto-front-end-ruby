require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'
require 'site_prism'
require_relative 'page.initialize.rb'
include RSpec::Matchers

Environment = ENV['URL']
World(Page)

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = Environment
  config.default_max_wait_time = 20 #time
end
