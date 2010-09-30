# -*- encoding:utf-8 -*-
class SupportshipsController < ApplicationController
  def create
    @supportship = Supportship.new
    @supportship.user_name = params[:user_name] 
    @supportship.supporter_name = session[:screen_name] 
    @supportship.frequency = params[:supportship][:frequency]
    if @supportship.save
      redirect_to root_url , :notice => "Apoiando @#{@supportship.user_name}!"
    else
      redirect_to root_url , :notice => "Oops! Erro ao apoiar @#{@supportship.user_name}. Por favor tente novamente mais tarde."
    end
  end

  def update
    @supportship = Supportship.find params[:id]
    @supportship.frequency = params[:supportship][:frequency]
    if @supportship.save
      flash[:notice] = 'Frequência do seu apoio atualizada!'
    else
      flash[:error] = 'Oops! Erro ao atualizar frequência.'
    end
    redirect_to root_path
  end

  def destroy
    Supportship.where(:id => params[:id]).first.destroy
    redirect_to root_url , :notice => 'Você parou de apoiar.'
  end
end
