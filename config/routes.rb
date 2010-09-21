Twitteiro::Application.routes.draw do
  root :to => 'tweets#index'
  
  resource  :sessions
  resources :tweets
  resources :usuarios

  resource :tweets, :controller => 'tweets' do
    post :tweet
    post :retweet
  end
      
  match 'admin',   :to => 'admin#index'
  match 'sobre',   :to => 'info#sobre'
  match 'faq',     :to => 'info#faq'
  match 'contato', :to => 'info#contato'
  match 'privacidade', :to => 'info#privacidade'
  match 'termos',  :to => 'info#termos'
  match 'finalize_session', :to => 'sessions#finalize'
end
