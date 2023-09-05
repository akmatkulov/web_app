Rails.application.routes.draw do
  root 'home#index'

  resources :users

  resources :iphones do
    resources :reviews, except: [:new, :show]
  end
end
