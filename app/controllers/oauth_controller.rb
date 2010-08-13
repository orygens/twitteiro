class OauthController < ApplicationController
  def start
    @request_token = client.get_request_token
    session[:request_token] = @request_token
    session[:request_token_secret] = @request_token
    redirect_to @request_token.authorize_url
  end
  
  def callback
    @request_token = client.get_request_token(:oauth_callback => 'http://localhost:3000')
    @access_token = @request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
  end

  private 

  def client
    @client = OAuth::Consumer.new(
      'bHU901qt0sXxPslj6nGukQ','MM1E9xzbz5YvC7OrlZwV80eQEYPjCWeF6t5xE2sCprk',
      :site => 'https://api.twitter.com',
      :authorize_url => 'https://api.twitter.com/oauth/authorize',
      :access_token_url => 'https://api.twitter.com/oauth/access_token'
    )
  end
end
