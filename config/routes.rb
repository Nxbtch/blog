Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :posts, only: [:index, :show]

  namespace :admin do
    root 'welcome#index'
    resources :posts
  end
end
