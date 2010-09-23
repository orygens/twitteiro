class SupportshipsController < ApplicationController
  def create
    @supportship = Supportship.new
    @supportship.user_id = params[:user_id] 
    @supportship.supporter_id = session[:id] 
    @supportship.frequency = params[:supportship][:frequency]
    if @supportship.save
      redirect_to root_url , :notice => 'Apoiando!'
    else
      redirect_to root_url , :notice => 'Oops! Falha ao adicionar suporte'
    end
  end

  def destroy
    Supportship.where(:id => params[:id]).first.destroy
    redirect_to root_url , :notice => 'Apoio retirado'
  end
end
