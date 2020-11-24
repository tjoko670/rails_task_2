Rails.application.routes.draw do
  resources :users

  #一覧表示のルーティング
 # get '/users', to: 'users#index'
  #新規登録のルーティング
 # get '/users/new', to: 'users#new'
  #送信ボタンを押したときのルーティング
 # post '/users', to: 'users#create'
  #編集のルーディング
 # get '/users/:id/edit', to: 'users#edit'
  #編集完了画面へのルーディング
 # patch '/users/:id', to: 'users#update'
  #削除のルーティング
 # delete '/users/:id', to: 'users#destroy'
end
