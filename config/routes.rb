Rails.application.routes.draw do
  resources :images
  resources :project_parts
  resources :parts
  resources :users
  resources :projects
  post '/login', to: 'users#login'
  get '/profile', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
