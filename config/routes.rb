Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :video_games, only: [:index, :show] do
    resources :collections, only: [:create]
  end
  resources :users, only: [:show]
  resources :shops, only: [:index]
  resources :messages, only: [:index, :show]
  resources :collections, only: [:index, :show, :new, :destroy]
end
