require 'spec_helper'

describe UsuariosController do

  def mock_usuario(stubs={})
    @mock_usuario ||= mock_model(Usuario, stubs).as_null_object
  end

  describe 'GET index' do
    it 'assinala todos os usuarios como @usuarios' do
      Usuario.stub(:all) { [mock_usuario] }
      get :index
      response.should be_success
      assigns(:usuarios).should eq([mock_usuario])
    end
  end
end
