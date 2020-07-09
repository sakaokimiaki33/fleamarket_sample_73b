Rails.application.routes.draw do
  get 'card/new'
  get 'card/show'
  devise_for :users
  root to: 'items#index'

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  

  resources :buyconfirmations, only: [:index] do
    collection do
      get 'index', to: 'buyconfirmations#index'
    end
  end
  resources :product_detail, only:[:index]
end
