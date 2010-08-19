require 'spec_helper'

describe UsuariosController do

  def mock_usuario(stubs={})
    @mock_usuario ||= mock_model(Usuario, stubs).as_null_object
  end

  describe "GET index" do
    it "assinala todos os usuarios como @usuarios" do
      Usuario.stub(:all) { [mock_usuario] }
      get :index
      assigns(:usuarios).should eq([mock_usuario])
    end
  end

  describe "GET show" do
    it "assinala o usuario requisitado como @usuario" do
      Usuario.stub(:find).with("1") { mock_usuario }
      get :show, :id => "1"
      assigns(:usuario).should be(mock_usuario)
    end
  end
end
