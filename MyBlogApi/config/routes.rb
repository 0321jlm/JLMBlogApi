Rails.application.routes.draw do

  # Home controller routes.
  root  'home#index'
  get   'auth' => 'home#auth'

  # Get login token from Knock
  post 'user_token' => 'user_token#create'

  # User actions
  get '/users'  => 'users#index'
  get '/users/current' => 'users#current'
  post '/users/create' => 'users#create'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  
end
