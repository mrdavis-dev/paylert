Rails.application.routes.draw do
  
  resources :users
  post '/auth/login', to: 'authentication#login'
  delete '/auth/logout', to: 'authentication#logout'

  resources :clients
  resources :items
  resources :contratos

  # personalizados
  get 'contratos/contracts_by_client/:idclient', to: 'contratos#contracts_by_client', as: 'show_contracts_by_client'
end
