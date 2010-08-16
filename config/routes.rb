Twitteiro::Application.routes.draw do
  root :to => 'home#index'
  match '/login' => redirect('/oauth/start')
  match 'admin',   :to => 'admin#index'
  
  resources :usuarios
  resource :oauth, :controller => 'oauth' do
    get :start
    get :callback
  end
end
