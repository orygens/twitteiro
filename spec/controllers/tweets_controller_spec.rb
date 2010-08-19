require 'spec_helper'

describe TweetsController do

  def mock_tweet(stubs={})
    @mock_tweet ||= mock_model(Tweet, stubs).as_null_object
  end

  describe "GET index" do
    it "assinala todos os tweets como @tweets" do
      Tweet.stub(:all) { [mock_tweet] }
      get :index
      assigns(:tweets).should eq([mock_tweet])
    end
  end
end
