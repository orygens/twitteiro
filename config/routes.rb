Twitteiro::Application.routes.draw do
  root :to => 'tweets#index'

  post 'apoios/create'
  post 'apoios/update'
  get  'apoios/destroy' , :as => :desapoiar

  post 'retuites/create'
  post 'retuites/update'
  get  'retuites/destroy' , :as => :desretuitar
  get  'tuitar/:id', :as => 'tuitar', :to => "tweets#tuitar"
  get  'habilitar', :as => 'habilitar', :to => "tweets#habilitar"

  resource  :sessions
  resources :tweets
  resources :usuarios

  match 'admin',   :to => 'admin#index'
  match 'sobre',   :to => 'info#sobre'
  match 'faq',     :to => 'info#faq'
  match 'contato', :to => 'info#contato'
  match 'privacidade', :to => 'info#privacidade'
  match 'termos',  :to => 'info#termos'
  match 'finalize_session', :to => 'sessions#finalize'
end
