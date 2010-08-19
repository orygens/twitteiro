Twitteiro::Application.routes.draw do
  root :to => 'home#index'
  match 'admin',   :to => 'admin#index'
  
  resources :tweets
  resources :usuarios
  resource :oauth, :controller => 'oauth' do
    get :start
    get :callback
  end
end
