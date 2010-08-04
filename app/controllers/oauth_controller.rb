class OauthController < ApplicationController
  def start
    request_token = client.get_request_token
    session[:request_token] = request_token
    redirect_to request_token.authorize_path
    )
  end
  
  def callback
    access_token = client.get_access_token
    render :json => access_token_get('/oauth/request_token')
  end
  
  def client
    @consumer = OAuth::Consumer.new(
      'bHU901qt0sXxPslj6nGukQ','MM1E9xzbz5YvC7OrlZwV80eQEYPjCWeF6t5xE2sCprk',
      :site => 'https://twitter.com',
      :authorize_path => '/oauth/authorize',
      :access_token_path => '/oauth/access_token'
    )
  end
end
