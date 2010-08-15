class UsuariosController < ApplicationController
  respond_to :html, :json, :rss, :atom
  
  def index
    @usuarios = Usuario.all
    respond_with @usuarios
  end

  def show
    @usuario = Usuario.find(params[:id])
    respond_with @usuario
  end

end
