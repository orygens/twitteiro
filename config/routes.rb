Twitteiro::Application.routes.draw do
  root :to => 'tweets#index'
  #match '/:id',    :to => 'usuarios#show'
  match 'admin',   :to => 'admin#index'
  match 'sobre',   :to => 'info#sobre'
  match 'faq',     :to => 'info#faq'
  match 'contato', :to => 'info#contato'
  match 'privacidade', :to => 'info#privacidade'
  match 'termos',  :to => 'info#termos'

  resource  :sessoes
  resources :tweets
  resources :usuarios
end
