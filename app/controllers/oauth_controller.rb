class OauthController < ApplicationController
  def start
    request_token = client.get_request_token(:oauth_callback => 'http://localhost:3000')
    session[:request_token] = request_token.token
    session[:request_token_secret] = request_token.secret
    redirect_to request_token.authorize_url
  end
  
  def callback
    @access_token = client.get_access_token(:oauth_verifier => params[:oauth_verifier])
    render :json => access_token_get('https://api.twitter.com/account/verify_credentials.json')
  end
  
  protected 

  def client
    @consumer = OAuth::Consumer.new(
      'bHU901qt0sXxPslj6nGukQ','MM1E9xzbz5YvC7OrlZwV80eQEYPjCWeF6t5xE2sCprk',
      :site => 'https://api.twitter.com',
      :authorize_url => 'https://api.twitter.com/oauth/authorize',
      :access_token_url => 'https://api.twitter.com/oauth/access_token'
    )
  end
end
