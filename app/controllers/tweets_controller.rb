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

    client.update @tweet
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    respond_to do |format|
      format.html { redirect_to(tweets_url) }
      format.xml  { head :ok }
    end
  end

  def connect
    client.authorize_from_access('access token', 'access secret')    
  end
  
  def callback
    client = Twitter::Base.new(client)
  end

  private 

  def client
    @client = Twitter::OAuth.new('bV5Lxcdn3QROOt50wdFE8g', 'xHRwfCKAyU9d49vz50K1F57VDpuZ2bocS0eWeQFE2V4')
  end
end
