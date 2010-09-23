require 'spec_helper'

describe SupportshipsController do

  def mock_supportship(stubs={})
    @mock_supportship ||= mock_model(Supportship, stubs).as_null_object
  end
end
