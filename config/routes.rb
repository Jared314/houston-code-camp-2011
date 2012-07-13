HoustonCodeCamp2011::Application.routes.draw do

  # Resources
  resources :users
  resources :speakers
  resources :sessions
  resources :session_suggestions, :only => [:new, :create, :index]

  #custom session routes
  match '/session/assign' => 'sessions#assign_slot', :method => :post
  
  # Authentication routes
  match '/signin'                   => 'user_sessions#new',     :as => :signin
  match '/auth/:provider/callback'  => 'user_sessions#create'
  match '/auth/failure'             => 'user_sessions#failure'
  match '/signout'                  => 'user_sessions#destroy', :as => :signout

  # Global (root) routes
  match ':action', :controller => "home"

  root :to => "home#index"

end

