Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :musicians, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :projects do
    resources :comments
    resources :participants, only: [:create, :destroy]
  end
end
