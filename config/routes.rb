Rails.application.routes.draw do
  root 'home#index'

  resources :iphones do
    resources :reviews, except: [:new, :show]
  end
end
