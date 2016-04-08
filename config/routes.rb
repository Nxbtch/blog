Rails.application.routes.draw do
  devise_for :users, path: 'admin'
  root 'welcome#index'

  post 'page_view' => 'page_view#create'
  resources :posts, only: [:show]

  namespace :admin do
    root 'welcome#index', as: :root
    resources :posts do
      collection do
        post :preview
      end
    end
    resources :page_views, only: [:index, :destroy]
  end
end
