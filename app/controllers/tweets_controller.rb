# -*- encoding:utf-8 -*-
class TweetsController < ApplicationController
  before_filter :authenticate
  respond_to :html, :xml

  def deliver
    Delayed::Job.enqueue RetweetingJob.new params[:id]
    redirect_to root_path, :notice => 'Tudo pronto!'
  end
  
  def index
    params[:page] ||= 1
    @tweets = Tweet.where :user_id => session[:id] 
    @tweet = Tweet.new
    respond_with @tweets, @tweet
  end

  def apoio
    @frequencia = Supportship.find params[:id]
  end

  def tuitar
    @tweet = Tweet.find params[:id]
    client.update @tweet.tweet
    redirect_to root_path, :notice => 'Mensagem tuitada!'
  end

  def retuitar
    client.retweet
  end

  def habilitar
    @tweet = Tweet.find params[:id]
    redirect_to root_path, :notice => 'Mensagem habilitada para os seus apoiadores!'
  end

  def new
    @tweet = Tweet.new
    respond_with @tweet
  end

  def edit
    @tweet = Tweet.find params[:id]
  end

  def create
    @tweet  = Tweet.new params[:tweet]
    @tweet.user_id = session[:id]
    if @tweet.save
      cookies[:_tweet_mensagem] = @tweet.id
      flash[:notice] = 'Mensagem salva!'
    else
      flash[:notice] = 'Erro ao criar mensagem.'
    end
    redirect_to root_path
  end

  def update
    @tweet = Tweet.find params[:id]
    @tweet.user_id = session[:id]
    if @tweet.update_attributes params[:tweet]
      flash[:notice] = 'Mensagem atualizada!'
    end
    redirect_to root_path
  end

  def destroy
    @tweet = Tweet.find params[:id]
    @tweet.destroy
    redirect_to root_path, :notice => 'Mensagem apagada.'
  end
end
