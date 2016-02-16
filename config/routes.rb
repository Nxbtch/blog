Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :posts, only: [:show]

  namespace :admin do
    root 'welcome#index'
    resources :posts
  end
end
