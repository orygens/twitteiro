class UsuariosController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate
  
  def index
    @usuarios = Usuario.all
    respond_with @usuarios
  end

  def show
    @tweets = client.user_timeline(:id => params[:id])
    @usuario = client.user(params[:id])
  end
end
