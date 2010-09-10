require 'spec_helper'

describe 'Usuarios' do
  describe 'GET /usuarios' do
    it 'Request com sucesso (200)' do
      get usuarios_path
    end
  end
end
