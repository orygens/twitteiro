# -*- encoding:utf-8 -*-
class RetweetshipsController < ApplicationController
  def create
    @retweetship = Retweetship.new
    @retweetship.user_name = params[:user_name] 
    @retweetship.retweeter_name = session[:screen_name] 
    @retweetship.frequency = params[:retweetship][:frequency]
    if @retweetship.save
      redirect_to root_url , :notice => "Retuitando @#{@retweetship.user_name}!"
    else
      redirect_to root_url , :notice => "Oops! Erro ao retuitar @#{@retweetship.user_name}. Por favor tente novamente mais tarde."
    end
  end

  def update
    @retweetship = Retweetship.find params[:id]
    @retweetship.frequency = params[:retweetship][:frequency]
    if @retweetship.save
      flash[:notice] = 'Frequência dos Retuítes atualizada!'
    else
      flash[:error] = 'Oops! Erro ao atualizar frequência.'
    end
    redirect_to root_path
 end

  def destroy
    Retweetship.where(:id => params[:id]).first.destroy
    redirect_to root_url , :notice => 'Você parou de retuitar.'
  end
end
