Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :musicians, only: [:index, :show] do
    member do
     get "connect", to: "musicians#connect"
     get "remove", to: "musicians#remove"
     get "block", to: "musicians#block"
     get "unblock", to: "musicians#unblock"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
