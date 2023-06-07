Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :comments, only: [:create, :edit, :update, :destroy]

  resources :posts do
    resources :comments, only: [:create]
    member do
      patch 'like', to: 'posts#like', as: 'like'
      patch 'dislike', to: 'posts#dislike', as: 'dislike'
      get 'like', to: 'posts#like', as: 'like_get'
      get 'dislike', to: 'posts#dislike', as: 'dislike_get'
    end
  end

  root "home#index"
end
