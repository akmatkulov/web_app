Rails.application.routes.draw do
  root 'home#index'

  resources :iphones do
    resources :reviews, only: [:create, :destroy, :edit, :update]
  end
end
