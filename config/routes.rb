Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  root to: "home#index"
  resources :items, except: [:index] do
    resources :orders, only: [:new, :create]
  end

end
