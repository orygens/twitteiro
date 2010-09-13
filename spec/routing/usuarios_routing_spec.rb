require 'spec_helper'

describe UsuariosController do
  describe 'roteamento aos perfis' do
    it 'rotea /usuarios/:username pra usuarios#show' do
      { :get => '/usuarios/rodrigo3n' }.should route_to(:controller => 'usuarios', :action => 'show', :id => 'rodrigo3n')
    end
  end
end
