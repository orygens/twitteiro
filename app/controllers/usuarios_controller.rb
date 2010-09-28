class UsuariosController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate

  def show
    @tweets = client.user_timeline :id => params[:id]
    @usuario = client.user params[:id]
    @supportship = Supportship.where(:supporter_name => session[:screen_name] , :user_name => @usuario.screen_name).last
    @supporters = Supportship.where(:user_name => @usuario.screen_name)
    @supporteds = Supportship.where(:supporter_name => @usuario.screen_name)
    respond_with @tweets, @usuario
  end
end
