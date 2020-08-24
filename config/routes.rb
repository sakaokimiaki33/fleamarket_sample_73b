Rails.application.routes.draw do
  devise_for :addresses
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:show, :edit, :update, :destroy]
  

  resources :items do
    collection do
      post 'pay', to: 'items#pay'
      post 'show', to: 'items#create'
      get 'show', to: 'items#show'
      get 'pickup',to: 'items#pickup'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  resources :purchase, only: [:index] do
    member do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
  resources :card, only: [:new, :show]
  resources :products,only:[:index, :new]
  resources :mypage, only:[:index, :new]
end
