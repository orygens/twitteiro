require 'twitter/authentication_helpers'
require "#{Rails.root}/vendor/plugins/twitter-text-rb/lib/twitter-text"
class ApplicationController < ActionController::Base
  include Twitter::AuthenticationHelpers
  include Twitter::Autolink
  include Twitter::Extractor
  protect_from_forgery
  layout 'application'
  helper :all
  rescue_from Twitter::Unauthorized, :with => :force_sign_in

  private

  def oauth
    @oauth ||= Twitter::OAuth.new 'i8ukFgmyn53USKo3yy78Q', '0GnyTJoqVCTDWtRXYqFy30gTPP4qW4dEAlJheKKEGtI', :sign_in => true
  end

  def client
    oauth.authorize_from_access session[:atoken], session[:asecret]
    Twitter::Base.new oauth
  end
  helper_method :client

  def force_sign_in(exception)
    reset_session
    flash[:error] = 'Parece que suas credenciais expiraram. Favor entre novamente.'
    redirect_to root_path
  end
end
