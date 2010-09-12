class SessionsController < ApplicationController
  def new
  end

  def create
    oauth.set_callback_url finalize_session_url
    session['rtoken']  = oauth.request_token.token
    session['rsecret'] = oauth.request_token.secret

    redirect_to oauth.request_token.authorize_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  def finalize
    oauth.authorize_from_request(session['rtoken'], session['rsecret'], params[:oauth_verifier])

    profile = Twitter::Base.new(oauth).verify_credentials
    session[:profile_image_url] = profile.profile_image_url
    session[:friends_count]     = profile.friends_count
    session[:followers_count]   = profile.followers_count
    session[:statuses_count]    = profile.statuses_count
    session[:location]          = profile.location
    session[:bio]               = profile.description
    session['rtoken']           = session['rsecret'] = nil
    session[:atoken]            = oauth.access_token.token
    session[:asecret]           = oauth.access_token.secret

    sign_in(profile)
    redirect_back_or root_path
  end
end
