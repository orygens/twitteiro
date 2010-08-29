class TweetsController < ApplicationController
  before_filter :authenticate
  respond_to :html, :xml

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
    respond_with @tweets, @tweet
  end

  def create
    @tweet = Tweet.new(params[:tweet]) 
    client.update @tweet

    redirect_to root_url
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    respond_to do |format|
      format.html { redirect_to(tweets_url) }
      format.xml  { head :ok }
    end

    client.status_destroy @tweet
  end
end
