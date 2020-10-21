Rails.application.routes.draw do
  resources :notes
  resources :memories
  resources :users, only: [:index, :create]
  #the above handles the user signing up 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/users/login", to: "users#login"
  post "/users", to: "users#create"
  get "/users/keep_logged_in", to: "users#keep_logged_in"


 



  #get "/auto_login", to:"users#auto_login"
  # get "/user_is_authed", to: "users#user_is_authed"



end
