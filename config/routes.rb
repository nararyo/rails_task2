Rails.application.routes.draw do

  resources :users

#一覧画面へのルーティング 
#get '/users', to: 'users#index'

#新規投稿画面のルーティング
#get '/users/new', to: 'users#new'

#新規登録を行うためのルーティング
#post '/users', to: 'users#create'
    
#編集するためのルーティング
#get '/users/:id/edit', to: 'users#edit'

#更新を行うためのルーティング
#patch '/users/:id', to: 'users#update'

#投稿を削除するためのルーティング
#delete '/users/:id', to: 'users#destroy'



end