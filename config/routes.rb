Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
 
 get 'contents/index'
 get 'contents/new'
 post '/contents', to: 'contents#create'
 
  
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  resources :topics
  
  
  get 'favorites/index'
  post 'favorites', to: 'favorites#create'
  # resourcesを使うとわけわからなくなってしまうので自分で作る。HTTPリクエスト：DELETE　アクション:destroy
  delete 'favorites', to: 'favorites#destroy' 

  
  
  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete'/logout',   to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
