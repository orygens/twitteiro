class UsuariosController < ApplicationController
  respond_to :html, :xml
  before_filter :authenticate
  
  def show
    @tweets = client.user_timeline(:id => params[:id])
    @usuario = client.user(params[:id])
    respond_with @tweets, @usuarios
  end
end
