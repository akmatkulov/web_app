Rails.application.routes.draw do
  root 'home#index'

  get '/iphones', to: 'iphones#index' #маршрут на вывод всех вопросов
  get '/iphones/new', to: 'iphones#new' #маршрут формы для создание вопросов
  post '/iphones', to: 'iphones#create' #маршрут для отправки данных на сервер
  #get '/questions/:id/edit', to: 'questions#edit' # маршрут для редактирование вопросов
  

  resources :questions
end
