require "capybara"
require "capybara/cucumber"
require "cucumber"
require "faker"
require "httparty"
require "selenium-webdriver"
require "site_prism"
require "yaml"
require "webdrivers"

require_relative "pages_helpers"
World(Pages)

# CONFIG = YAML.load_file("./config/qa.yml")
