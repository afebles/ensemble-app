Rails.application.routes.draw do
  # get 'connections/index'

  # get 'connections/show'

  devise_for :users, controllers: { registrations: 'registrations'}
  root to: 'pages#home'

  resources :musicians, only: [:index, :show] do
    member do
     get "connect", to: "musicians#connect"
     get "remove", to: "musicians#remove"
     get "block", to: "musicians#block"
     get "unblock", to: "musicians#unblock"
     get "accept", to: "musicians#accept"
    end
  end

  resources :connections, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects do
      resources :comments
      resources :participants, only: [:create, :destroy]
      end

  resources :conversations do
    resources :messages do
      member do
        get "mark_read", to: "messages#mark_read", as: :read
      end
    end
  end
end
