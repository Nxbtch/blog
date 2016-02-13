Rails.application.routes.draw do
  root 'welcome#index'
  resources :posts, only: [:index, :show]

  namespace :admin do
    root 'welcome#index'
    resources :posts
  end
end
