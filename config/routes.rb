Rails.application.routes.draw do
  devise_for :addresses
  devise_for :users
  root to: 'toppages#index'

  resources :buyconfirmations, only: [:index] do
    collection do
      get 'index', to: 'buyconfirmations#index'
    end
  end
  resources :product_detail, only:[:index]
  resources :items, except: :show
  resources :products,only:[:index, :new]
  resources :mypage, only:[:index, :new]
end
