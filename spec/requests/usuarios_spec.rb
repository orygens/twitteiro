require 'spec_helper'

describe 'Usuarios' do
  describe 'GET /usuarios/rodrigo3n' do
    it 'Request com sucesso (200)' do
      get usuarios_path + 'rodrigo3n'
    end
  end
end
