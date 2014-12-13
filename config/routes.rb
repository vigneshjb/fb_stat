Rails.application.routes.draw do
  
  resources :fb_items

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  root :to => 'static#home'

  match 'menu', to: 'static#user_menu', via: [:get]

end
