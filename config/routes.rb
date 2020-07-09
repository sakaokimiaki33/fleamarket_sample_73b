Rails.application.routes.draw do
  
  root to: 'toppages#index'

  resources :buyconfirmations, only: [:index] do
    collection do
      get 'index', to: 'buyconfirmations#index'
    end
  end
  resources :product_detail, only:[:index]
  resources :mypage, only:[:index]
end
