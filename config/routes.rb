Rails.application.routes.draw do
  devise_for :users
    # gem 'devise' で使用できるルーティングを定義する。

  root to: 'items#index'
    # ルートパス （get '/', to: '[コントローラー名]#[アクション名]'） にリクエストする。
end
