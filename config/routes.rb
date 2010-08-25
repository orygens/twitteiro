Twitteiro::Application.routes.draw do
  root :to => 'home#index'
  #match '/:id',    :to => 'usuarios#show'
  match 'admin',   :to => 'admin#index'
  match 'sobre',   :to => 'info#sobre'
  match 'faq',     :to => 'info#faq'
  match 'contato', :to => 'info#contato'
  match 'privacidade', :to => 'info#privacidade'
  match 'termos',  :to => 'info#termos'

  resources :tweets
  resources :usuarios
  resource :oauth, :controller => 'tweets' do
    get :connect
    get :callback
  end
end
