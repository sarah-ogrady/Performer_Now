Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: %i[index]
  resources :performers, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [] do
    member do
      get :confirmation
    end
    resources :reviews, only: %i[new create]
  end
end
