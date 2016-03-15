Rails.application.routes.draw do
  devise_for :users
  root to: 'meals#index'

  resource :profile, only: [:show, :edit, :update]
  resources :users do
   #resources :profiles, only: [:show, :edit, :update]
   resources :meals, only: [:new, :create, :edit, :update]
  end

  resources :meals, only: [:index, :show]

end



