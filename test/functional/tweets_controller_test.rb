require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  setup do
    @tweet = tweets(:one)
  end

  test 'deve renderizar view index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweets)
  end

  test 'deve criar tweet' do
    assert_difference('Tweet.count') do
      post :create, :tweet => @tweet.attributes
    end

    assert_redirected_to tweet_path(assigns(:tweet))
  end

  test 'deve destruir mensagem' do
    assert_difference('Tweet.count', -1) do
      delete :destroy, :id => @tweet.to_param
    end

    assert_redirected_to tweets_path
  end
end
