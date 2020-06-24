Rails.application.routes.draw do
  root 'items#index'
  resources :product_detail, only:[:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
