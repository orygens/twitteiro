require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  context 'GET pra :index dos Usuarios' do
    setup do
      get :index
    end
  end
end
