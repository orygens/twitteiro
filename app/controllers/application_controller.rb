require 'twitter/authentication_helpers'
class ApplicationController < ActionController::Base
  include Twitter::AuthenticationHelpers 
  
  protect_from_forgery
  layout 'application'
  helper :all
  rescue_from Twitter::Unauthorized, :with => :force_sign_in

  def usuario_atual
    Usuario.find session[:usuario]
  end

  def admin?
    unless current_user && current_user.id == 1
      flash[:error] = "Por favor, logue como administrador."
      redirect_to root_path
    end
  end

  private

  def oauth
    @oauth ||= Twitter::OAuth.new('i8ukFgmyn53USKo3yy78Q', '0GnyTJoqVCTDWtRXYqFy30gTPP4qW4dEAlJheKKEGtI', :sign_in => true)
  end

  def client
    oauth.authorize_from_access(session[:atoken], session[:asecret])
    Twitter::Base.new(oauth)
  end
  helper_method :client

  def force_sign_in(exception)
    reset_session
    flash[:error] = 'Parece que suas credenciais expiraram. Favor entre novamente.'
    redirect_to root_path
  end
end
