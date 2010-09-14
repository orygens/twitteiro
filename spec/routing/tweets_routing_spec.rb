require 'spec_helper'

describe TweetsController do
  describe 'rotas' do
    it 'reconhece e gera #index' do
      { :get => '/' }.should route_to(:controller => 'tweets', :action => 'index')
    end

    it 'reconhece e gera #edit' do
      { :get => '/tweets' }
    end
  end
end
