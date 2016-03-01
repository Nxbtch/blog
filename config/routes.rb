Rails.application.routes.draw do
  devise_for :users, path: 'admin'
  root 'welcome#index'
  resources :posts, only: [:show]

  namespace :admin do
    root 'welcome#index'
    resources :posts do
      collection do
        post :preview
      end
    end
  end
end
