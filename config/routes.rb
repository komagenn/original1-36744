Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'shifts#index'

  resources :shifts, only: [:index, :new, :create]
    resources :users, only: [:index, :show]

end
