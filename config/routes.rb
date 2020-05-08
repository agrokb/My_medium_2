Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations:'users/registrations'
  }
  resources :stories
  # /@larry/article-123
  get '@:username/:story_id',to: 'pages#show',as: 'story_page'
  # /@larry/
  get '@:username',to: 'pages#user',as: 'user_page'

  root 'pages#index'
  
end
