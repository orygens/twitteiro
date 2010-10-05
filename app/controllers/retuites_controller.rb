# -*- encoding:utf-8 -*-
class RetuitesController < ApplicationController
  def create
    @retuite = Retuite.new
    @retuite.nome_usuario = params[:nome_usuario] 
    @retuite.nome_retuitador = session[:screen_name] 
    @retuite.frequencia = params[:retuite][:frequencia]
    if @retuite.save
      redirect_to root_url , :notice => "Retuitando @#{@retuite.nome_usuario}!"
    else
      redirect_to root_url , :notice => "Oops! Erro ao retuitar @#{@retuite.nome_usuario}. Por favor tente novamente mais tarde."
    end
  end

  def update
    @retuite = Retuite.find params[:id]
    @retuite.frequencia = params[:retuite][:frequencia]
    if @retuite.save
      flash[:notice] = 'Frequência dos Retuítes atualizada!'
    else
      flash[:error] = 'Oops! Erro ao atualizar frequência.'
    end
    redirect_to root_path
 end

  def destroy
    Retuite.where(:id => params[:id]).first.destroy
    redirect_to root_url , :notice => 'Você parou de retuitar.'
  end
end
