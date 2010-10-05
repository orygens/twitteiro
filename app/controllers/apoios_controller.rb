# -*- encoding:utf-8 -*-
class ApoiosController < ApplicationController
  def create
    @apoio = Apoio.new
    @apoio.nome_usuario = params[:nome_usuario] 
    @apoio.nome_apoiador = session[:screen_name] 
    @apoio.frequencia = params[:apoio][:frequencia]
    if @apoio.save
      redirect_to root_url , :notice => "Apoiando @#{@apoio.nome_usuario}!"
    else
      redirect_to root_url , :notice => "Oops! Erro ao apoiar @#{@apoio.nome_usuario}. Por favor tente novamente mais tarde."
    end
  end

  def update
    @apoio = Apoio.find params[:id]
    @apoio.frequencia = params[:apoio][:frequencia]
    if @apoio.save
      flash[:notice] = 'Frequência do seu apoio atualizada!'
    else
      flash[:error] = 'Oops! Erro ao atualizar frequência.'
    end
    redirect_to root_path
  end

  def destroy
    Apoio.where(:id => params[:id]).first.destroy
    redirect_to root_url , :notice => 'Você parou de apoiar.'
  end
end
