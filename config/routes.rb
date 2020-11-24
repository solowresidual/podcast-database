Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :podcasts, only: [:index, :show ]

  resources :episodes, only: [:show] do
    resources :reviews, only: [:create]
    resources :favorites, only: [:create]
  end
  get 'recommended', to: 'episodes#recommended'

  resources :reviews, only: [:index, :edit, :update, :destroy]

  resources :favorites, only: [:index, :update, :destroy]
end
