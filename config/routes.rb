Rails.application.routes.draw do
  # For detailson the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #新規投稿画面へのルーティング
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  
  #編集画面へ遷移するためのルート
  get '/users/:id/edit', to: 'users#edit'
  
  #編集完了画面へのルーティング
  patch '/users/:id', to: 'users#update'

  #削除ボタンを押した時のルート
  delete '/users/:id', to: 'users#destroy'
  
end
