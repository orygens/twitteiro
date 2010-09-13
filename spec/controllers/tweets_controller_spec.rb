require 'spec_helper'

describe TweetsController do

  def mock_tweet(stubs={})
    @mock_tweet ||= mock_model(Tweet, stubs).as_null_object
  end

  describe 'GET index' do
    it 'assinala todos os tweets como @tweets' do
      get :index
    end
  end
end
