class AdminController < ApplicationController
  respond_to :html

  def index
    @admin = Admin
    respond_with @admin
  end

  def create
    admin = Admin.find_by_password(params[:password])
    if admin
      session[:user] = user.id
      flash[:message] = 'Administrador logado!'
      redirect_to admin_path
    else
      flash[:warning] = 'Senha incorreta, tente de novo, administrador.'
      redirect_to admin_path
    end
  end
 
  def destroy
    session[:user] = nil
    flash[:message] = 'Administrador saiu.'
    redirect_to root_path
  end
end
