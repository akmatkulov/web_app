Rails.application.routes.draw do
  root 'home#index'

  #get '/questions', to: 'questions#index' #маршрут на вывод всех вопросов
  #get '/questions/new', to: 'questions#new' #маршрут формы для создание вопросов
  #post '/questions', to: 'questions#create' #маршрут для отправки данных на сервер
  #get '/questions/:id/edit', to: 'questions#edit' # маршрут для редактирование вопросов
  

  resources :questions
end
