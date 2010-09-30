class UsuariosController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate

  def show
    @usuario     = client.user params[:id]
    @supportship = Supportship.where(:supporter_name => session[:screen_name], :user_name => @usuario.screen_name).last
    @supporters  = Supportship.where(:user_name => @usuario.screen_name)
    @retweetship = Retweetship.where(:retweeter_name => session[:screen_name], :user_name => @usuario.screen_name).last
    @retweeters  = Retweetship.where(:user_name => @usuario.screen_name)
    respond_with @usuario
  end
end
