Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :games do
    resources :bookings, only: %i[new create]
    resources :reviews, only: [:create, :new]
  end

  resources :categories, only: :show
  resources :reviews, only: [:destroy]

  #resources :bookings, only: %i[update]
  get "dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
