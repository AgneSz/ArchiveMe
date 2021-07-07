Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'

  get 'archives', to: 'archives#index'
  get 'archives/new', to: 'archives#new'
  get 'archives/:id', to: 'archives#show'
  get 'archives/new', to: 'archives#new'
  post 'archives/', to: 'archives#create'
  get 'archives/:id/edit', to: 'archives#edit'
  patch 'archives/:id', to: 'archives#update'
  delete 'archives/:id', to: 'archives#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
