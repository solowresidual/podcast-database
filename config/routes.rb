Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :podcasts, only: [:index, :show ]

  resources :episodes, only: [:show] do
    resources :reviews, only: [:create, :edit, :update ]
    resources :favorites, only: [:create]
  end
  get 'recommended', to: 'episodes#recommended'

  resources :reviews, only: [:index, :destroy]

  resources :favorites, only: [:index, :update, :destroy]
end
