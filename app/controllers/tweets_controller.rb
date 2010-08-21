class TweetsController < ApplicationController
  respond_to :html, :json, :atom
  
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
    respond_with @tweets, @tweet

  end

  def create
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to(tweets_url, :notice => 'Mensagem criada!') }
        format.xml  { render :xml => @tweet, :status => :created, :location => @tweet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tweet.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    respond_to do |format|
      format.html { redirect_to(tweets_url) }
      format.xml  { head :ok }
    end
  end

  def start
    request_token = client.get_request_token(:oauth_callback => 'http://0.0.0.0:3000/tweets/')
    session[:request_token] = request_token
    redirect_to request_token.authorize_url
  end
  
  def callback
    request_token = session[:request_token]
    access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
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
