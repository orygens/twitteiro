Twitteiro::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  config.serve_static_assets = false
  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"
  config.action_mailer.raise_delivery_errors = true
  config.threadsafe!
  config.i18n.fallbacks = true
end
