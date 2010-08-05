require "spec_helper"

describe UsuariosController do
  describe "rotas" do

    it "reconhece e gera #show" do
      { :get => "/users/1" }.should route_to(:controller => "usuarios", :action => "show", :id => "1")
    end

  end
end
