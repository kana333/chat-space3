Rails.application.routes.draw do
  devise_for :users
  root to: 'messages#index'
  resources :users, only: [:edit, :update, :destory]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
