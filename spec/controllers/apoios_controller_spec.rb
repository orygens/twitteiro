require 'spec_helper'

describe ApoiosController do

  def mock_supportship(stubs={})
    @mock_supportship ||= mock_model(Apoio, stubs).as_null_object
  end
end
