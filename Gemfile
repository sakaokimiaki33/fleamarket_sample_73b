source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'devise'
    # Flexible authentication solution for Rails with Warden.
    # Warden を使った Rails向けの柔軟な認証ソリューション
  gem 'pry-rails'
    # Use Pry as your rails console.
    # Pry を Railsコンソールとして使用する。
  gem 'rspec-rails'
    # rspec-rails is a testing framework for Rails 5+.
    # rspec-railsはRails 5+のためのテストフレームワークです。
  gem 'factory_bot_rails'
    # factory_bot_rails provides integration between factory_bot and rails 5.0 or newer
    # factory_bot_rails は factory_bot と rails 5.0 以降の間の統合を提供します。
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
  gem 'capistrano-rails-console'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'unicorn'
    # unicorn is an HTTP server for Rack applications designed to only serve fast clients on low-latency, high-bandwidth connections and take advantage of features in Unix/Unix-like kernels.
    # Unicorn は、低レイテンシ、高帯域幅の接続で高速なクライアントのみにサービスを提供し、Unix/Unixライクなカーネルの機能を利用できるように設計されたラックアプリケーション用の HTTP サーバーです。
    # Slow clients should only be served by placing a reverse proxy capable of fully buffering both the the request and response in between unicorn and slow clients.
    # 遅いクライアントは、ユニコーンと遅いクライアントの間に、リクエストとレスポンスの両方を完全にバッファリングできるリバースプロキシを置くことによってのみ、サービスを提供すべきです。
end

gem 'ancestry'
  # Ancestry allows the records of a ActiveRecord model to be organized in a tree structure, using a single, intuitively formatted database column.
  # Ancestry では、ActiveRecord モデルのレコードをツリー構造で整理することができ、単一の直感的にフォーマットされたデータベースカラムを使用します。
  # It exposes all the standard tree structure relations (ancestors, parent, root, children, siblings, descendants) and all of them can be fetched in a single sql query.
  # これは、すべての標準的な木構造関係（祖先、親、ルート、子、兄弟、子孫）を公開し、それらすべてを単一のSQLクエリで取得することができます。
  # Additional features are named_scopes, integrity checking, integrity restoration, arrangement of (sub)tree into hashes and different strategies for dealing with orphaned records.
  # その他の機能としては、named_scopes、完全性チェック、完全性復元、ハッシュへの(サブ)ツリーの配置、孤児となったレコードを扱うための様々な戦略などがあります。

gem 'haml-rails'
  # Haml-rails provides Haml generators for Rails 4.
  # Haml-rails は、Rails4 用の Hamlジェネレータを提供します。
  # It also enables Haml as the templating engine for you, so you don't have to screw around in your own application.rb when your Gemfile already clearly indicated what templating engine you have installed. Hurrah.
  # また、Hamlをテンプレートエンジンとして使用できるようにしてくれるので、Gemfile にどのテンプレートエンジンがインストールされているかが明記されている場合でも、自分の application.rb をいじくり回す必要がありません。

gem 'jquery-rails'
  # This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
  # この Gem は jQuery と Rails4+アプリケーション用の jQuery-ujsドライバを提供します。

gem 'font-awesome-rails'
  # font-awesome-rails provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.
  # font-awesome-rails は、アセットパイプラインで使用するための Railsエンジンとして、Font-Awesome の Webフォントとスタイルシートを提供しています。

gem 'font-awesome-sass', '~> 5.4.1'
  # Font-Awesome SASS gem for use in Ruby projects.
  # Font-Awesome を Rubyプロジェクトで使用するための素晴らしい SASS の Gem

gem 'fog-aws'
  # This library can be used as a module for `fog` or as standalone provider to use the Amazon Web Services in applications.
  # このライブラリは `fog` のモジュールとして、あるいはスタンドアロンのプロバイダとして、アプリケーションで Amazon Web Services を利用するために利用することができます。

gem 'mini_magick'
  # Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick.
  # ImageMagick / GraphicsMagick を通じて、最小限のメモリ使用で画像を操作することができます。

gem 'carrierwave'
  # Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.
  # Rubyアプリケーション内のファイルをアップロードしたり、様々なORMにマッピングしたり、異なるバックエンドに保存したりすることができます。