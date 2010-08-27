class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

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
    @oauth ||= Twitter::OAuth.new('bV5Lxcdn3QROOt50wdFE8g', 'xHRwfCKAyU9d49vz50K1F57VDpuZ2bocS0eWeQFE2V4', :sign_in => true)
  end

  def client
    oauth.authorize_from_access(session[:atoken], session[:asecret])
    Twitter::Base.new(oauth)
  end

  def force_sign_in(exception)
    reset_session
    flash[:error] = 'Parece que suas credenciais expiraram. Favor entre novamente.'
    redirect_to root_path
  end
end
