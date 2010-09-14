require File.expand_path('../boot', __FILE__)
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Twitteiro
  class Application < Rails::Application
    config.time_zone = 'America/Recife'
    config.i18n.default_locale = :pt_BR
    config.encoding = 'utf-8'
    config.filter_parameters += [:password]

    config.generators do |g|
      g.template_engine  :erb
      g.test_framework   :rspec, :fixture => true, :views => false
      g.integration_tool :rspec, :fixture => true, :views => true 
      g.integration_tool :rspec
    end
  end
end
