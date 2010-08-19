Twitteiro::Application.routes.draw do
  root :to => 'home#index'
  match 'admin',   :to => 'admin#index'
  match 'sobre',   :to => 'info#sobre'
  match 'faq',     :to => 'info#faq'
  match 'contato', :to => 'info#contato'
  match 'privacidade', :to => 'info#privacidade'
  match 'termos',  :to => 'info#termos'

  resources :tweets
  resources :usuarios
  resource :oauth, :controller => 'oauth' do
    get :start
    get :callback
  end
end
