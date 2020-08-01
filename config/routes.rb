Rails.application.routes.draw do
  root 'posts#index'

  resources :authors, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :edit]
  end
  resources :posts
end
