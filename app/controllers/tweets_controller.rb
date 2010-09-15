class TweetsController < ApplicationController
  before_filter :authenticate
  respond_to :html, :xml

  def index
    params[:page] ||= 1
    @tweets = Tweet.all
    @tweet = Tweet.new
    respond_with @tweets, @tweet
  end

  def tuitar
    @tweet = Tweet.find(params[:id])
    client.update @tweet
    redirect_to root_path
    flash[:notice] = 'Mensagem tuitada!'
  end

  def new
    @tweet = Tweet.new
    respond_with @tweet
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet  = Tweet.new(params[:tweet])
    if @tweet.save
      cookies[:_tweet_mensagem] = @tweet.id
      flash[:notice] = 'Tweet foi salvo!'
    end

    redirect_to root_path
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update_attributes(params[:tweet])
      flash[:notice] = 'Tweet atualizado!'
    end
    redirect_to root_path
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path
    flash[:notice] = 'Mensagem apagada.'
  end
end
