class TweetsController < ApplicationController
  before_filter :authenticate
  respond_to :html, :xml

  def index
    params[:page] ||= 1
    @tweets = Tweet.all
    @mensagens = client.friends_timeline(:page => params[:page])
    respond_with @tweets, @mensagens
  end

  def create
    options = {}
    options.update(:in_reply_to_status_id => params[:in_reply_to_status_id]) if params[:in_reply_to_status_id].present?
    tweet = client.update(params[:text], options)
    flash[:notice] = 'Mensagem tuitada!'
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update_attributes(params[:tweet])
      flash[:notice] = 'Tweet atualizado!'
    end

    redirect_to root_path
  end

  def tuitar
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    client.status_destroy @tweet
    flash[:notice] = 'Tweet apagado.'
    redirect_to root_path
  end
end
