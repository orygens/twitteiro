require File.dirname(__FILE__) + '/../spec_helper'
require 'steak'
require 'capybara/rails'

RSpec.configuration.include Capybara, :type => :acceptance
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
