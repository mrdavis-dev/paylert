Rails.application.routes.draw do
  
  resources :users
  post '/auth/login', to: 'authentication#login'
  delete '/auth/logout', to: 'authentication#logout'

  resources :clients
end
