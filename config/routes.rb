Rails.application.routes.draw do

  #sessions
  get "/login", to: "sessions#new", as: :login
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :subjects
  resources :classrooms
  resources :books
  resources :buses
  resources :stages, only: [:index, :show, :edit]
  resources :teachers
  resources :parents
  resources :students

  #users
  get "/", to: "sessions#new"
  # get "/users/:id", to: "users#show", as: :my_profile
  # get "/my_profile", to: "users#show", as: :my_profile

  #dashboard
  get "/dashboard/parents", to: "dashboard_parents#index", as: :dashboard_parents

  get "/dashboard/students", to: "dashboard_students#index", as: :dashboard_students

  #books
  resources :books, except: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
