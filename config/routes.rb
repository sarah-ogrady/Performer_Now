Rails.application.routes.draw do
  devise_for :users
  root to: 'performers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :performers, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [] do
    resources :reviews, only: %i[new create]
  end
end
