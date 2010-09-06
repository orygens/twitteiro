Twitteiro::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.action_dispatch.x_sendfile_header = "X-Sendfile"
  config.serve_static_assets = false
  config.active_support.deprecation => :notify
  config.action_mailer.raise_delivery_errors = true
  config.threadsafe!
  config.i18n.fallbacks = true
end
