Rails.application.routes.draw do
  devise_for :users
  root to: 'meals#index'

  resource :profile, only: [:show, :edit, :update]
  resources :users do
    resources :meals, only: [:new, :create, :edit, :update]

  end

  resources :meals, only: [:index, :show] do
    resources :order_lines, only: [:index, :new, :create, :edit, :update]
  end

end



