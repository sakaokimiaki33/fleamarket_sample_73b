Rails.application.routes.draw do
  devise_for :users
    # gem 'devise' で使用できるルーティングを定義する。

  root 'items#index'
end
