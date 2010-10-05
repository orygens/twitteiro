class UsuariosController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate

  def show
    @usuario      = client.user params[:id]
    @apoio        = Apoio.where(:nome_apoiador => session[:screen_name], :nome_usuario => @usuario.screen_name).last
    @apoiadores   = Apoio.where(:nome_usuario => @usuario.screen_name)
    @retuite      = Retuite.where(:nome_retuitador => session[:screen_name], :nome_usuario => @usuario.screen_name).last
    @retuitadores = Retuite.where(:nome_usuario => @usuario.screen_name)
    respond_with @usuario
  end
end
