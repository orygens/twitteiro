Twitteiro::Application.routes.draw do |map|
  root :to => 'home#index'
  match '/login' => redirect('/oauth/start')
  match 'admin',   :to => 'admin#index'
  match 'usuarios', :to => 'usuarios#index'

  resource :oauth, :controller => 'oauth' do
    get :start
    post :callback
  end
end
