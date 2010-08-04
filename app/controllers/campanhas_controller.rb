class CampanhasController < ApplicationController
  respond_to :html, :xml, :json, :rss
  
  def index
    @campanhas = Campanha.all
    respond_with @campanhas
  end
 
  def show
    @campanha = Campanha.find(params[:id])
    respond_with @campanha
  end
  
  def new
    @campanha = Campanha.new
    respond_with @campanha
  end

  def edit
    @campanha = Campanha.find(params[:id])
  end

  def create
    @campanha = Campanha.new(params[:campanha])
    if @campanha.save
      flash[:notice] = "Campanha criada!"
    end
    respond_with @campanha
  end
  
  def update
    @campanha = Campanha.find(params[:id])
    if @campanha.update_attributes(params[:campanha])
      flash[:notice] = 'Campanha atualizada!'
    end
    respond_with @campanha
  end
    
  def destroy
    @campanha = Campanha.find(params[:id])
    @campanha.destroy
    flash[:notice] = "Campanha finalizada!"
  end
end
