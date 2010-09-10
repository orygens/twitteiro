require 'spec_helper'

describe UsuariosController do
  describe 'rotas' do
  end

  describe 'roteamento aos perfis' do
    it 'rotea /usuarios/:username pra usuarios#show' do
      { :get => '/usuarios/rodrigo3n' }.should route_to(
        :controller => 'usuarios',
        :action => 'show',
        :username => 'rodrigo3n'
      )
    end
  end
end
