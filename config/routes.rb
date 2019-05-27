Rails.application.routes.draw do
  resources :semesters
  resources :courses
  devise_for :users
  root 'pages#home'
end
