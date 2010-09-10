require 'spec_helper'

describe AdminController do

  describe 'GET index' do
    it 'deve renderizar view index na action index' do
      get 'index'
      response.should be_success
    end
  end
end
