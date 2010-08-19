module AdminHelper
  def admin_logado
    session[:user] && current_user.id == 1
  end
end
