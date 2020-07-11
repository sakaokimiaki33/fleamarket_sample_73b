Rails.application.routes.draw do
  
  devise_for :users
  root to: 'toppages#index'

  resources :buyconfirmations, only: [:index] do
    collection do
      get 'index', to: 'buyconfirmations#index'
    end
  end
  resources :product_detail, only:[:index]
  resources :mypage, only:[:index, :new]
end
