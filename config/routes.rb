Rails.application.routes.draw do
  root 'home#index'

  resources :iphones

  resources :questions
end
