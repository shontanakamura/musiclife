Rails.application.routes.draw do
  devise_for :users 
  root to: "posts#top"
  resources :posts, only: [:index,:new, :create, :show, :edit, :destroy] do
    member do
      get 'search'
    end
  end
end
