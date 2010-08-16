require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  should "mostrar username dos usuários" do
    usuario1 = {:username => "rodrigo3n"}
    usuario2 = {:username => "twitteiroapp"}
    Mongo::Vendor.collection.insert usuario1
    Mongo::Vendor.collection.insert usuario2

    assert_same_elements [usuario1, usuario2]
  
  context "GET pra :index dos Usuários" do
    setup do
      get :index
    end

    should assign_to(:usuario)
    should respond_with(:sucess)
    should render_template(:show)
  end
end
