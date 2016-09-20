Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

# API Namespaces
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/items', to: 'items#index'
      get '/items/:id', to: 'items#show'
    end
  end
end
