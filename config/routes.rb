Rails.application.routes.draw do
  
  resources :users, :only => [] do
  	get :refresh_data, :action => 'refresh_data'
  	resources :fb_items, :only => [:show, :index]
  end

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  root :to => 'static#home'
  match 'menu', to: 'static#user_menu', via: [:get]

end
