Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show 
 
  root to: "posts#top"
  resources :posts, only: [:index,:new, :create, :show, :edit, :destroy] do
    resources :comments, only: :create 
    end
end


    # member do
    #     get 'search'
    # end