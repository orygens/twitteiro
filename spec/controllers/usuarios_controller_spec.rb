require 'spec_helper'

describe UsuariosController do

  def mock_usuario(stubs={})
    @mock_usuario ||= mock_model(Usuario, stubs).as_null_object
  end
end
