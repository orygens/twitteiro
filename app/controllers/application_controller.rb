class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def usuario_atual
    Usuario.find session[:usuario]
  end
end
