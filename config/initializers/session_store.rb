Rails.application.config.session_store :cookie_store, :key => '_twitteiro_session'
require 'mongoid_session_store/mongoid_store'
Twitteiro::Application.config.session_store :mongoid_store
