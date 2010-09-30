Twitteiro::Application.routes.draw do
  root :to => 'tweets#index'

  post 'supportships/create'
  post 'supportships/update'
  get  'supportships/destroy' , :as => :destroy_support

  post 'retweetships/create'
  post 'retweetships/update'
  get  'retweetships/destroy' , :as => :destroy_retweet
  get  'tuitar/:id', :as => 'tuitar', :to => "tweets#tuitar"

  resource  :sessions
  resources :tweets
  resources :usuarios

  resources :tweets do
    member do
      post :tuitar
    end
  end
      
  match 'admin',   :to => 'admin#index'
  match 'sobre',   :to => 'info#sobre'
  match 'faq',     :to => 'info#faq'
  match 'contato', :to => 'info#contato'
  match 'privacidade', :to => 'info#privacidade'
  match 'termos',  :to => 'info#termos'
  match 'finalize_session', :to => 'sessions#finalize'
end
