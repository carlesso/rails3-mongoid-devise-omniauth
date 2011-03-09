Rails3MongoidDeviseOmniauth::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  match '/registrations' => 'registrations#email'
  root :to => "home#index"
  devise_for :users
  resources :users, :only => :show
  resources :authentications
end
